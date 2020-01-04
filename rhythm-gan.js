const path = require('path');
const Max = require('max-api');

const tf = require('@tensorflow/tfjs-node');

// Constants 
const MIDI_DRUM_MAP = require('./src/constants.js').MIDI_DRUM_MAP;
const DRUM_CLASSES = require('./src/constants.js').DRUM_CLASSES;
const NUM_DRUM_CLASSES = require('./src/constants.js').NUM_DRUM_CLASSES;
const LOOP_DURATION = require('./src/constants.js').LOOP_DURATION;

const Z_DIM = 100;

// Global Variables
var generator;
var isModelLoaded = false;
var isGenerating = false;

async function loadModel(filepath){
    generator = await tf.loadLayersModel(filepath);
}

function generate(genre=-1){
    let zs = tf.randomNormal([1, Z_DIM]);  // mean = 0.0 / stddev = 1.0

    // conditioned with genre
    if (genre >= 0){
        let condition = tf.tensor([[genre]])
        var outputsOn = generator.apply([zs, condition]);  
    } 
    // non conditional
    else {
        var outputsOn = generator.apply(zs);    
    }

    console.log(outputsOn.squeeze().transpose().shape);
    return outputsOn.squeeze().transpose().arraySync();
}

Max.addHandler("loadmodel", (path)=>{
    filepath = "file://" + path;
    loadModel(filepath);
    isModelLoaded = true;
    console.log("Model loaded!");
});

Max.addHandler("generate", (threshold, genre=-1)=>{
    generatePattern(threshold, genre);
});

async function generatePattern(threshold, genre){
    if (isModelLoaded){    
      if (isGenerating) return;
  
      isGenerating = true;
      let onsets = generate(genre);

    //  console.log(onsets);

      Max.outlet("matrix_clear", 1); // clear all
      for (var i=0; i< NUM_DRUM_CLASSES; i++){
          var sequence = []; // for velocity
        //   var sequenceTS = []; // for timeshift
          // output for matrix view
          for (var j=0; j < LOOP_DURATION; j++){
              // if (pattern[i * LOOP_DURATION + j] > 0.2) x = 1;
              if (onsets[i][j] > threshold){
                Max.outlet("matrix_output", j + 1, i + 1, 1); // index for live.grid starts from 1
           
                // for live.step
                sequence.push(Math.floor(onsets[i][j]*127.)); // 0-1 -> 0-127
                // sequenceTS.push(Math.floor(utils.scale(timeshifts[i][j], -1., 1, 0, 127))); // -1 - 1 -> 0 - 127
              } else {
                sequence.push(0);
                // sequenceTS.push(64);
              }
          }
  
          // output for live.step object
          Max.outlet("seq_output", i+1, sequence.join(" "));
        //   Max.outlet("timeshift_output", i+1, sequenceTS.join(" "));
      }
      Max.outlet("generated", 1);
      isGenerating = false;
  } else {
      console.error("Model is not loaded yet");
  }
}


#!/bin/bash

outputDir="../data/captured_data/synthetic/rendered"
inputDir="../data/captured_data/synthetic"
checkpoint="checkpointTrained"

N_INPUTS=7
N_CREATED=13

python pixes2Material.py --mode test --output_dir $outputDir --input_dir $inputDir --batch_size 1 --input_size 256 --nbTargets 4 --useLog --includeDiffuse --which_direction AtoB --inputMode folder --maxImages $N_CREATED --nbInputs $N_INPUTS --feedMethod render --useCoordConv --checkpoint $checkpoint --fixImageNb --imageFormat png --testFolder stitched --renderingScene movingViewHemiSpotLightOneSurface


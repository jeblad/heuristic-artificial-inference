#include <stdio.h>
#include <stdlib.h>
#include <cuda.h>

// this is the deleayed learning, which gives an effect similar to batching
#define BATCHING 512

// this pushes a prepared sense data into a subspace on device
// often this will be prepared on the host
__global__ void pushSenseData() {
}

// this pulls a calculated sense data from a subspace on device
// often this will be displayed on the host
__global__ void pullSenseData() {
}

// this create blank sense data for a subspace on device
// not sure if this makes sense
__global__ void blankSenseData() {
}

// this pushes prepared states into short time (state) memory on device
__global__ void pushStates() {
}

// this pulls calculated states from short time (state) memory on device
__global__ void pullStates() {
}

// this create blank states for short time (state) memory on device
__global__ void blankStates() {
}

// this pushes a weight tensor for the complete manifold on device
// should perhaps be segmented
__global__ void pushWeights() {
}

// this pulls a weight tensor for the complete manifold on device
// should perhaps be segmented
__global__ void pullWeights() {
}

// this create a blank weight tensor for the complete manifold on device
__global__ void blankWeights() {
}

// Evaluate apical dendrites and set firing of synapses
// current activation of synapses are kept for later
__global__ void activateApicalDendrite() {
    // activateSynapses();
    // tentativeLearnSynapses();
}

// Evaluate basal dendrites and set firing of synapses
// current activation of synapses are kept for later
__global__ void activateBasalDendrite(int layer) {
    // activateSynapses();
    // tentativeLearnSynapses();
}

// Evaluate dendrites and set tentative learning states of synapses
__global__ void spikeNode(int layer) {
    // previousActivation = currentActivation;
    // activateAxon();
}

int main() {
    // declare all variables
    unsigned int = 0;
    bool die = false;
    
    // allocate host memory
    // malloc();
    
    // allocate device memory
    // cudaMalloc();
    
    // load weights from store on host
    //

    // load state from store on host
    
    while (!die) {
        tick++;
        
        // push sense data from host to device
        // pushSenseData();
        
        //-- neo --
        // updates after sense data
        
        // evaluate apical state on device
        // activateApicalDendrite<<<numblocks, numthreads>>>();
        
        // evaluate each of the layers
        // activateBasalDendrite<<<numblocks, numthreads>>>(1);
        // spikeNode<<<numblocks, numthreads>>>(1);
        // activateBasalDendrite<<<numblocks, numthreads>>>(2);
        // spikeNode<<<numblocks, numthreads>>>(2);
        // activateBasalDendrite<<<numblocks, numthreads>>>(3);
        // spikeNode<<<numblocks, numthreads>>>(3);
        // activateBasalDendrite<<<numblocks, numthreads>>>(4);
        // spikeNode<<<numblocks, numthreads>>>(4);
        // activateBasalDendrite<<<numblocks, numthreads>>>(5);
        // spikeNode<<<numblocks, numthreads>>>(5);
        
        //-- basket --
        // should this go first?
        // activateBasket<<<numblocks, numthreads>>>();
        
        //-- candle --
        // updates after neo
        // activateCandle<<<numblocks, numthreads>>>();
        
        //-- learn --
        // updates after candle
        if (tick % BATCHING) {
            tick = 0;
            //learnSynapses<<numblocks, numthreads>>();
        }
        
        //-- state --
        // updates after candle
        
        //-- assoc --
        // updates after candle
        
        // pull sense data from device to host
        // pullSenseData();
    }
    
    // save state to store on host
    // pullState();
        
    // free host memory
    // cudaFree();
        
    // free device memory
    // free();
    
}
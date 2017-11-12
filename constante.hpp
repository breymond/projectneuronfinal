#ifndef CONSTANTE_H
#define CONSTANTE_H


const double R=20.0; //!membrane resistance
const double tau=20.0; //!membrane time constant in ms
const double vth=20.0; //!spike threshold potential
const double h=0.1; //!integration time step
const int delay = 15;	//!delay from spike to target receiving
const double g = 5; //!ratio of jinhibitory/jexcitatory
const double jexcitatory = 0.1; //!j for the excitatory neurons
const double jinhibitory = -(jexcitatory*g); //!j for the inhibitory neurons

const double cext = 1000; //!number of connection to an excitatory neuron
const double cinhib = 250; //!number of connection to an inhibitory neuron

const double eta = 2; //!constant used for the poisson distribution

const int extNeuron = 10000; //!number of excitatory neurons
const int inNeuron = 2500; //!number of inhibitory neurons
const int numberNeuron = extNeuron + inNeuron; //!number total of neurons

#endif

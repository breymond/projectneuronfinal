#include <iostream>
#include <fstream>
#include <cmath>
#include <vector>
#include <random>
#include <cassert>

#include "neuron2.hpp"
#include "constante.hpp"

using namespace std;

Neuron::Neuron(): vm(0), refractory(0), iext(0), numspike(0), timespike(0), buffer(delay+1), targetneuron(0)
{} //setting all the values in the class

double Neuron::getvm() //function to return the value of the membrane potential
{
	return vm;
}

int Neuron::getnumspike() //function to return the number of a particular neuron
{
	return numspike;
}

int Neuron::gettarget(int i) //function to get the number of the target neuron
{
	return targetneuron[i];
}

/*double Neuron::getbuffer(int b)
{
	return buffer[b];
}*/

void Neuron::setiext(double ie) //function to set a new external current initially equal to 0.0
{
	iext = ie;
}

void Neuron::background(double poisson) //function to add a potential with a poisson distribution
{
	if(refractory==0) //if the neuron spiked recently, no potential will be added
	{
		vm += jexcitatory*poisson; //the poisson distribution is multiply with the excitatory j
	}
}

void Neuron::receive_spike(int t, int n) //function to receive the post spike potential from another neuron
{
	if(n<extNeuron) //the first neurons are all excitatory
	{
		buffer[(t+delay)%(delay+1)] += jexcitatory; //add the excitatory to the buffer with the delay
	}
	else //the last neurons are the inhibitory ones
	{
		buffer[(t+delay)%(delay+1)] += jinhibitory; //add the inhibitory to the buffer with the delay
	}
}

bool Neuron::update(int t, int steps) //function to update the membrane potential of a neuron
{
	bool spike = false; //bool is initially set to false
	int t_interne = t%(delay+1); //t_interne is used for the buffer
	assert(t_interne < delay+1); //check t_interne
	
	for(int s(0); s<steps; s++) //this step is used for the gtest else the loop is run once 
	{
		if(refractory == 0) //the neuron cannot receive potential if it spiked recently
		{
			if(abs(vm) > vth) //condition for a spike
			{
				++numspike;
				timespike = t;
				spike = true; //the bool is changed since a spike happened
				vm = 0.0; //after each spike the membrane potential get to 0.0
				refractory = 20; //time in time steps, the neuron will not receive potential
			}
			else //update of the membrane potential
			{
				vm = exp(-h/tau)*vm +R*(1-exp(-h/tau))*iext+ buffer[t_interne];
				spike = false;
			}
		}
		else
		{
			--refractory; //the refractory decrease at every time step
		}
	}
	buffer[t_interne] = 0; //the buffer of the particular time is set back to 0.0
	assert(buffer[t_interne] == 0); //check buffer
	return spike; //return if a spike happened or not
}

void Neuron::connect(int target) //function to set the target of a neuron
{
	targetneuron.push_back(target); //the vector size is iniatilized to 0
									//we need a push back to create a new space for an extra connection
}

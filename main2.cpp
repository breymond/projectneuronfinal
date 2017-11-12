#include <iostream>
#include <fstream>
#include "neuron2.hpp"
#include "constante.hpp"
#include <random>

using namespace std;

int main()
{	
	vector<Neuron> network(numberNeuron); //!create a vector of class neuron for the number of neuron
	
	random_device rd;
	mt19937 gen(rd()); //!creation of a random generator for the connections
	uniform_int_distribution<int> nbrexcitatory(0, extNeuron-1); //!the first neurons are excitatory
	uniform_int_distribution<int> nbrinhibitory(extNeuron, numberNeuron-1); //!the last neurons are inhibitory

	for(int n(0); n<numberNeuron; n++) //!loop to create connections for each neurons
	{
		for(int econ(0); econ<cext; econ++) //excitatory connections
		{
			int target = 0;
			target = nbrexcitatory(gen); //get a random neuron from the excitatory neurons to connect
			network[n].connect(target); //create the new excitatory connection
		}

		for(int icon(0); icon<cinhib; icon++) //inhibitory connections
		{
			int target = 0;
			target = nbrinhibitory(gen); //get a random neuron from the inhibitory neurons to connect
			network[n].connect(target); //create the new inhibitory connection
		}
	}
	
	random_device ra;
	mt19937 gene(ra()); //creation of a random generator
	poisson_distribution<> poi(eta); //the random generator uses a poisson distribution with eta
	
	ofstream myfile;
	myfile.open("neuronspike.txt"); //open a file to write the spike of each neuron
	
	
	int tfin = 12000; //time steps each equal to 0.1ms
	
	for(int t(0); t<tfin; t++) //loop for each time step
	{
		for(int n(0); n<numberNeuron; n++) //loop for each neuron
		{
			network[n].background(poi(gene)); //each neuron receive a potential according to the poisson distribution
			bool spike = network[n].update(t, 1); //update the membrane potential
		
			if(spike)
			{
				for(int i(0); i<(cext+cinhib); i++) //loop for each connected neurons
				{
					int x(0);
					x = network[n].gettarget(i); //get the number of the target neuron
					network[x].receive_spike(t,n); //the target neuron receive a post spike potential
				}
				//if(n <30) 
				if(t >10000 and t<12000 and n<50) myfile << t <<"\t" << n+1 <<"\n"; //write in the file the time when the neuron spiked
			}
		}
	}
	myfile.close(); //close the file at the end of the simulation
	
	return 0;
}

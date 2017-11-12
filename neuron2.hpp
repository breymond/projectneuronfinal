#ifndef NEURON2_H
#define NEURON2_H

#include <iostream>
#include <cassert>
#include <vector>

class Neuron //!creation of a class called neuron
{
	private:
		double vm; //!membrane potential
		int refractory; //!refractory time
		double iext; //!external current equal to 0.0 if no other condition
		int numspike; //!the number of time the neuron spiked
		double timespike; //!the time the last spike of the neuron occur
		
		
		std::vector<double> buffer; //!buffer for the connection spike
		std::vector<int> targetneuron; //!vector of the connections of the neuron
	
	public:
		Neuron(); //!class constructor
		
		/**return the membrane potential
		 * @param no parameter needed
		 * @return the value of the membrane potential
		 */
		double getvm();
		
		/**get the number of spike from the neuron
		 * @param the neuron itself
		 * @return the number of time this neuron spiked
		 */
		int getnumspike();
		
		/**get the number of the neuron that is targeted
		 * @param a number to know where to look in the vector
		 * @return a number between 0 and the number of neurons
		 */
		int gettarget(int i);
		
		/**set the external current of the neuron
		 * @param the value of the external current we want to apply
		 */
		void setiext(double ie);
		
		/**add a potential following a poisson distribution
		 * @param the value of the poisson distribution
		 */
		void background(double poisson);
		
		/**add a potential in the buffer of a targeted neuron after a spike
		 * @param the time t in time steps and the number of the spiking neuron
		 */
		void receive_spike(int t, int i);
		
		/**update the membrane potential of the neuron
		 * @param the time t in time steps and the steps, the number of time it should update
		 */
		bool update(int t, int steps);
		
		/**connect the neuron to the targets by updating the target vector
		 * @param the number of the neuron we want to create a conection with
		 */
		void connect(int target);
};


#endif

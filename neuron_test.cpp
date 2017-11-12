#include "neuron2.hpp"
#include "gtest/gtest.h"
#include "constante.hpp"
#include <cmath>
#include <vector>
#include <random>

using namespace std;

TEST (NeuronTest, PositiveInput)
{
	Neuron neuron;
	neuron.setiext(1.0);
	
	neuron.update(0, 1);
	//Verification that the update is correct
	EXPECT_EQ(20.0*(1.0-exp(-0.1/20.0)), neuron.getvm());
	
	neuron.update(0, 10000);
	//We know that with an external current of 1.0, it will never spike
	EXPECT_EQ(0, neuron.getnumspike());
	EXPECT_GT(1E-3, abs(19.999 - neuron.getvm()));
	
	
	neuron.setiext(0.0);
	//With a current of 0.0, the potential should tend to zero
	neuron.update(0, 2000);
	EXPECT_NEAR(0, neuron.getvm(), 1E-3);
		
}

TEST (NeuronTest, Negativeinput)
{
	Neuron neuron;
	neuron.setiext(-1.0);
	
	neuron.update(0, 1);
	//Verification of the update with a negative current
	EXPECT_EQ(-20*(1.0-exp(-0.1/20)), neuron.getvm());
	
	neuron.update(0, 10000);
	//We know that with an external current of -1.0, it will never spike
	EXPECT_GT(1E-3, abs(-19.999 - neuron.getvm()));
	
	neuron.setiext(0.0);
	//With a current of 0.0, the potential should tend to zero
	neuron.update(0, 2000);
	EXPECT_NEAR(0, neuron.getvm(), 1E-3);	
}

TEST (NeuronTest, SpikeTimes)
{
	Neuron neuron;
	neuron.setiext(1.01);
	
	//We know that when the external current is 1.01,
	// the spikes will occur at 92.4ms and 186.9ms
	
	//Waiting for spike number 1
	neuron.update(0, 924);
	EXPECT_EQ(0, neuron.getnumspike());
	//first spike should occur at the next step
	neuron.update(0, 1);
	EXPECT_EQ(1, neuron.getnumspike());
	EXPECT_EQ(0, neuron.getvm());
	
	//Waiting for spike number two
	neuron.update(0,944);
	EXPECT_EQ(1, neuron.getnumspike());
	//second step should occur at the next step
	neuron.update(0, 1);
	EXPECT_EQ(2, neuron.getnumspike());	
	
	
	//We also know that there is 4 spike before 390ms
	neuron.update(0, 2000);
	EXPECT_EQ(4, neuron.getnumspike());
}

TEST (TwoNeurons, ReceiveSpike)
{
	Neuron neuron1, neuron2;
	//Only one neuron receive an external current, we know it will spike at 92.4ms
	neuron1.setiext(1.01);
	
	//Waiting for the spike
	neuron1.update(0, 925);
	//Neuron2 receives a potential from the spike
	neuron2.receive_spike(925, 1);
	//After the spike the membrane potential is back to zero
	EXPECT_EQ(0.0, neuron1.getvm());
		
	//Waiting to receive the spike	
	neuron2.update(925+delay, 1);
	//Since neuron1 is excitatory the new vm of neuron2 will be 0.1
	EXPECT_EQ(0.1, neuron2.getvm());
}

TEST (TwoNeurons, SpikeBuffer)
{
	Neuron neuron1, neuron2;
	//Set two neurons with different current, only one spike by itself
	neuron1.setiext(1.01);
	neuron2.setiext(1.0);
	
	//We know that with a current of 1.01 a second spike will occur before 1870ms
	neuron1.update(0, 1870);
	//neuron2 will receive two spike
	neuron2.receive_spike(925, 1);
	neuron2.receive_spike(1870, 1);
	
	//After a spike the membrane potential should be equal to 0
	EXPECT_EQ(0, neuron1.getvm());
	
	//Waiting for neuron2 to spike
	neuron2.update(0, 1870+delay);
	//We have to update twice for both times neuron1 spiked
	neuron2.update(925+delay, 1);
	neuron2.update(1870+delay, 1);
	neuron2.update(0, 1);
	//At 1871+delay, neuron2 should spike
	EXPECT_EQ(1, neuron2.getnumspike());
	EXPECT_EQ(0, neuron2.getvm());
}

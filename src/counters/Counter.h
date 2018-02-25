#pragma once

#include <mutex>

#include "IObject.h"
#include "ICounter.h"

/// Base Counter Class
/**
	The (Base) Counter is a foundation for Derivative Counters. The Counter::count() needs to be overwriten for actual functionallity.
	The variable 'counter' is shared among all Counters.
*/

class Counter: public ICounter
{
	private:
		std::unique_ptr<IObject> object;/** Object Information */ 

	protected:
		static int counter;		/** The shared counter that is used among all Base Counters */
	
		static unsigned int gcntr;	/** Keeps track how many times count() is called */
		unsigned int pcntr;		/** Keeps track how many times the current count() is called */
	
	public:
		Counter();

		static bool gLock;		/** Lock all base counters */
		bool pLock;			/** Lock this counter */
	
		virtual int count();		/** Where the derivative changes the counter variable */
		virtual void reset();		/** Reset the global counter to zero */
		virtual bool validate();	/** Check if the counter is within the threshold */

		virtual unsigned int getPid();	/** Get the Private Id from Object Info */

		virtual unsigned int getGCntr();	/** Get the amount of times globally the count() function is called */
		virtual unsigned int getPCntr();	/** Get the amount of times count() is called */

		/* Threshold Getter and Setter */
		void setMinimum(int) override;
		int getMinimum() override;
	
		void setMaximum(int) override;
		int getMaximum() override;

		virtual int getCount() override;	
};

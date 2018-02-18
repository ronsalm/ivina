#pragma once 

#include <memory>

class ICounter
{
	protected:
		int maximum;
		int minimum;

	public:
		virtual ~ICounter() = default;
		
		virtual void setMaximum(int) = 0;	/** Set the maximum threshold value */
		virtual int getMaximum() = 0;		/** Get the maximum threshold value */
		virtual void setMinimum(int) = 0;	/** Set the minimum threshold value */
		virtual int getMinimum() = 0;		/** Get the minimum threshold value */
		
		virtual int getCount() = 0;		    /** Get the counter value */
};

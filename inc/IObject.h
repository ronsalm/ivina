#pragma once

class IObject
{
	protected:
		static unsigned int gid; 	        /** The global identifier keeps track how many times the Base Class is constructed */
		unsigned int pid;		            /** The private identifier is unique id based on the global identifier*/
	public:
		virtual unsigned int getPid() = 0;	/** Get the Private Counter */
		virtual unsigned int getGid() = 0;	/** Get the Global Counter, represents the amount of Base Counters that er build */
};

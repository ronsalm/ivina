#pragma once

#include <string>

class IObject
{
	protected:
        IObject(const std::string n,const unsigned int p):name(n),pid(p){};
    
        const std::string name;             /** The name of the object */
		const unsigned int pid;		        /** The private identifier is unique id based on the global identifier */
    
    public:
		virtual const unsigned int getPid() = 0;	/** Get the Private Counter */
        virtual const std::string getName() = 0;  /** Get the Name of the object */
};

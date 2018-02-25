#pragma once

#include <memory>
#include <map>
#include <string>

#include "IObject.h"

class ObjectManager
{
    typedef struct ids
    {
        unsigned int gid;
        unsigned int aid;
        unsigned int kid;
    };
    
	private:
		std::map <std::string, ids > objects;
	public:
		std::unique_ptr <IObject>   createObject(const std::string);
        void                        deleteObject(const std::string);

        unsigned int globalObjects(const std::string);
        unsigned int activeObjects(const std::string);
        unsigned int killedObjects(const std::string);
};


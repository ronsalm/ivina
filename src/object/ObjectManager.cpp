#include "ObjectManager.h"

#include "IObject.h"
#include "Object.h"

#include <stdio.h>
#include <memory> 
#include <string>

std::unique_ptr <IObject>   ObjectManager::createObject( const std::string name )
{
    std::unique_ptr <IObject> o;
    
    if ( objects.count(name) == 0 )
    {
        objects.insert( std::pair<std::string,ids>(name, ids{0,0} ) );
    }
    
    unsigned int id = ++objects.find(name)->second.gid;
    ++objects.find(name)->second.aid;
    
	o = std::make_unique<Object>(name,id);

	return o;	
}

/* TODO Everyone can call this function without exatullay killing the object */
void ObjectManager::deleteObject( const std::string name )
{
    if ( objects.count(name) == 0 )
    {
        throw "Object does not excists";
    }
    
    --objects.find(name)->second.aid;
    ++objects.find(name)->second.kid;
}

unsigned int ObjectManager::globalObjects(const std::string name )
{
    if ( objects.count(name) == 0 )
    {
        throw "Object does not excists";
    }
    return objects.find(name)->second.gid;
}

unsigned int ObjectManager::activeObjects(const std::string name )
{
    if ( objects.count(name) == 0 )
    {
        throw "Object does not excists";
    }
    return objects.find(name)->second.aid;
}

unsigned int ObjectManager::killedObjects(const std::string name )
{
    if ( objects.count(name) == 0 )
    {
        throw "Object does not excists";
    }
    return objects.find(name)->second.kid;
}

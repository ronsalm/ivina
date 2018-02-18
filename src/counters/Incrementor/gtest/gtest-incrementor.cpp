#include "gtest/gtest.h"
#include "../Incrementor.h"

#include <memory>
#include <climits>

const unsigned int magic =  42;

void SetUp()
{
	
}

TEST( Construct, Build )
{
	std::unique_ptr<Incrementor> i = std::make_unique<Incrementor>();
	ASSERT_NE( nullptr , i);

	/* Check Global ID */
//	ASSERT_EQ( (unsigned int) 1, i->getGID() );

	/* Check Private ID */
//	ASSERT_EQ( (unsigned int) 1, i->getPID() );
}

TEST( Construct, IncrementIDs )
{
	unsigned int id;


	for ( id=2 ; id<magic ; id++)
	{
		std::unique_ptr<Incrementor> i = std::make_unique<Incrementor>();
		
		/* Check IDs */
//		ASSERT_EQ( id , i->getGID() );
//		ASSERT_EQ( id , i->getPID() );
	}
}

TEST( Count, Increment )
{
	int cntr;
	std::unique_ptr<Incrementor> i = std::make_unique<Incrementor>();

	cntr = i->getCount();

	/* Check Incrementor is initialized on zero */
	ASSERT_EQ( 0, cntr);
	ASSERT_EQ( (unsigned int) 0, i->getPCntr() );
	ASSERT_EQ( (unsigned int) 0, i->getGCntr() );

	for ( unsigned int j = 1 ; j<magic ; j++)
	{
		i->count();
		cntr = i->getCount();

		/* Base Class counter does nothing with counter */
		ASSERT_EQ( (int) j, cntr); 	//Conversion from unsinged to signed !!!
		ASSERT_EQ( j , i->getPCntr() );
		ASSERT_EQ( j , i->getGCntr() );
	}	
}

TEST ( Count, Reset )
{
	std::unique_ptr<Incrementor> i = std::make_unique<Incrementor>();

	//ASSERT_NE( 0, i->getCount() );
	i->reset();		
	ASSERT_EQ( 0, i->getCount() );
	
}

int main( int argc, char**argv)
{
	::testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}

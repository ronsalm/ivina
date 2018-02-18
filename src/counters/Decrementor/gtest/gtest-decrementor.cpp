#include <memory>
#include <climits>

#include "gtest/gtest.h"
#include "../Decrementor.h"

const unsigned int magic =  42;

void SetUp()
{
	
}

TEST( Construct, Build )
{
	std::unique_ptr<Decrementor> d = std::make_unique<Decrementor>();
	ASSERT_NE( nullptr , d);

	/* Check Global ID */
//	ASSERT_EQ( (unsigned int) 1, d->getGID() );

	/* Check Private ID */
//	ASSERT_EQ( (unsigned int) 1, d->getPID() );
}

TEST( Construct, IncrementIDs )
{
	unsigned int id;


	for ( id=2 ; id<magic ; id++)
	{
		std::unique_ptr<Decrementor> d = std::make_unique<Decrementor>();
		
		/* Check IDs */
//		ASSERT_EQ( id , d->getGID() );
//		ASSERT_EQ( id , d->getPID() );
	}
}

TEST( Count, Decrement )
{
	int cntr;
	std::unique_ptr<Decrementor> d = std::make_unique<Decrementor>();
	
	cntr = d->getCount();

	/* Check Decrementor is initialized on zero */
	ASSERT_EQ( 0, cntr);
	ASSERT_EQ( (unsigned int) 0, d->getPCntr() );
	ASSERT_EQ( (unsigned int) 0, d->getGCntr() );

	for ( unsigned int j = 1 ; j<magic ; j++)
	{
		d->count();
		cntr = d->getCount();

		/* Base Class counter does nothing with counter */
		ASSERT_EQ( -1*((int)j), cntr); 	//Conversion from unsinged to signed !!!
		ASSERT_EQ( j , d->getPCntr() );
		ASSERT_EQ( j , d->getGCntr() );
	}	
}

TEST ( Count, Reset )
{
	std::unique_ptr<Decrementor> d = std::make_unique<Decrementor>();
	
	//ASSERT_NE( 0, d->getCount() );
	d->reset();		
	ASSERT_EQ( 0, d->getCount() );
	
}

int main( int argc, char**argv)
{
	::testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}

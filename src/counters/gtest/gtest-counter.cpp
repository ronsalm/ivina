#include <climits>
#include <memory>

#include "gtest/gtest.h"
#include "../Counter.h"

const unsigned int magic =  42;

void SetUp()
{
	
}

TEST( Construct, Build )
{
	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	ASSERT_NE( nullptr , c);

	/* Check Global ID */
//	ASSERT_EQ( (unsigned int) 1, c->getGID() );

	/* Check Private ID */
//	ASSERT_EQ( (unsigned int) 1, c->getPID() );
}

TEST( Construct, IncrementIDs )
{
	unsigned int id;

	// Requires 2 because of static gid in previous test 
	for ( id=2 ; id<magic ; id++)
	{
		std::unique_ptr<Counter> c = std::make_unique<Counter>();
		
		/* Check IDs */
//		ASSERT_EQ( id , c->getGID() );
//		ASSERT_EQ( id , c->getPID() );
	}
}

TEST( PrivateCounter, Initialize )
{
	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	ASSERT_NE( nullptr , c);

	c->reset();
	/* Check maximum is set */
	ASSERT_EQ( (unsigned int) 0 , c->getPCntr() );
}

TEST( PrivateCounter, Counting )
{
	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	ASSERT_NE( nullptr , c);

	c->reset();
	for ( unsigned int i = 1 ; i<magic ; i++)
	{
		c->count();
		ASSERT_EQ( i , c->getPCntr() );
	}	
}

TEST( PrivateCounter, Reset )
{
	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	
	c->reset();
	for ( unsigned int i = 1 ; i<magic ; i++)
	{
		c->count();
	}
	c->reset();
	ASSERT_EQ( (unsigned int) 0 , c->getPCntr() );
}


TEST( GlobalCounter, Initialize )
{
	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	ASSERT_NE( nullptr , c);

	c->reset();
	/* Check maximum is set */
	ASSERT_EQ( (unsigned int) 0 , c->getGCntr() );
}

TEST( GlobalCounter, Counting )
{
	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	
	c->reset();
	for ( unsigned int i = 1 ; i<magic ; i++)
	{
		c->count();
		ASSERT_EQ( i , c->getGCntr() );
	}	
}

TEST( GlobalCounter, Reset )
{
	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	
	c->reset();
	for ( unsigned int i = 1 ; i<magic ; i++)
	{
		c->count();
	}
	c->reset();
	ASSERT_EQ( (unsigned int)0 , c->getGCntr() );
}

TEST( Counting, Initialize )
{
	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	ASSERT_NE( nullptr , c);

	/* Check minimum is set */
	ASSERT_EQ( 0 , c->getCount() );
}

TEST( Counting, Counter )
{
	int cntr;
	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	c->reset();

	cntr = c->getCount();

	for ( unsigned int i = 0 ; i<magic ; i++)
	{
		c->count();
		cntr = c->getCount();

		/* Base Class counter does nothing with counter */
		ASSERT_EQ( 0, cntr);
	}	
}

TEST ( Counting , Reset )
{
	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	
	c->reset();		
	c->count();
	ASSERT_EQ( 0, c->getCount() );
}

TEST( Minimum , Initialize )
{
	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	ASSERT_NE( nullptr , c);

	/* Check minimum is set */
	ASSERT_EQ( 0 , c->getMinimum() );
}


TEST ( Minimum , SetterAndGetter )
{
	int value = magic*-1;

	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	ASSERT_NO_THROW( c->setMinimum(value) );
	
	ASSERT_EQ( value , c->getMinimum() );
}

TEST ( Minimum , SetterToHigh )
{
	int value = magic;

	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	EXPECT_ANY_THROW( c->setMinimum(value) );
	
	ASSERT_EQ( 0 , c->getMinimum() );
}

TEST ( Minimum , Reset )
{
	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	
	c->setMinimum(-1*magic);
	c->reset();		
	ASSERT_EQ( 0, c->getMinimum() );
}

TEST( Maximum, Initialize )
{
	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	ASSERT_NE( nullptr , c);

	/* Check maximum is set */
	ASSERT_EQ( 0 , c->getMaximum() );
}

TEST ( Maximum , SetterAndGetter )
{
	int value = magic;

	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	ASSERT_NO_THROW( c->setMaximum(value) );
	
	ASSERT_EQ( value , c->getMaximum() );
}

TEST ( Maximum , SetterToHigh )
{
	int value = -1*magic;

	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	EXPECT_ANY_THROW( c->setMaximum(value) );
	
	ASSERT_EQ( 0 , c->getMaximum() );
}

TEST ( Maximum , Reset )
{
	std::unique_ptr<Counter> c = std::make_unique<Counter>();
	
	c->setMaximum(magic);
	c->reset();		
	ASSERT_EQ( 0, c->getMaximum() );
}



int main( int argc, char**argv)
{
	::testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}

#include <memory>

#include "gtest/gtest.h"

#include "CounterFactory.h"
#include "ICounter.h"
#include "../Counter.h"
#include "../Incrementor/Incrementor.h"
#include "../Decrementor/Decrementor.h"

TEST( Construct, Factory)
{
	std::unique_ptr<CounterFactory> cf = std::make_unique<CounterFactory>();
	ASSERT_NE( nullptr , cf);
}

TEST( Building, Counter )
{
	std::unique_ptr<CounterFactory> cf = std::make_unique<CounterFactory>();
	std::unique_ptr<ICounter> c = std::move( cf->build(COUNTER) ); 

	/* Test if Factory returns object */
	ASSERT_NE( nullptr, c );

	/* Test if object derevative is a Counter */
	ASSERT_NE( nullptr, dynamic_cast<Counter*>( c.get() ) );
}

TEST( Building, Incrementor )
{
	std::unique_ptr<CounterFactory> cf = std::make_unique<CounterFactory>();
	std::unique_ptr<ICounter> c = std::move(cf->build(INCREMENTOR)); 

	/* Test if Factory returns object */
	ASSERT_NE( nullptr, c );

	/* Test if object derevative is a Counter */
	ASSERT_NE( nullptr, dynamic_cast<Incrementor*>( c.get() ) );
}

TEST( Building, Decrementor )
{
	std::unique_ptr<CounterFactory> cf = std::make_unique<CounterFactory>();
	std::unique_ptr<ICounter> c = std::move( cf->build(DECREMENTOR) ); 

	/* Test if Factory returns object */
	ASSERT_NE( nullptr, c );

	/* Test if object derevative is a Counter */
	ASSERT_NE( nullptr, dynamic_cast<Decrementor*>( c.get() ) );
}

int main( int argc, char**argv)
{
	::testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}

#include <gtest/gtest.h>

int test_conceptual_example_01();
int test_conceptual_example_02();
int test_shapes_example();

TEST(Concept1, atempt){
	try{
		EXPECT_FALSE(test_conceptual_example_01());
	}catch(std::exception){
		FAIL()<<"must be no exceptions, but got: "<<std::endl;
	}
}

TEST(Concept2, atempt){
        try{
                EXPECT_FALSE(test_conceptual_example_02());
        }catch(std::exception){
                FAIL()<<"must be no exceptions, but got: "<<std::endl;
        }
}

TEST(Shapes, atempt){
        try{
                EXPECT_FALSE(test_shapes_example());
        }catch(std::exception){
                FAIL()<<"must be no exceptions, but got: "<<std::endl;
        }
}

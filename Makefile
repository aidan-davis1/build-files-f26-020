# Build for srccomplexity

all : srcComplexity srcMLXPathCountTest

srcComplexity : srcComplexity.o srcMLXPathCount.o
	g++ srcComplexity.o srcMLXPathCount.o -lxml2 -o srcComplexity

srcComplexity.o : srcComplexity.cpp srcMLXPathCount.hpp
	g++ -I/usr/include/libxml2 -c srcComplexity.cpp

srcMLXPathCount.o : srcMLXPathCount.cpp srcMLXPathCount.hpp
	g++ -I/usr/include/libxml2 -c srcMLXPathCount.cpp

srcMLXPathCountTest : srcMLXPathCountTest.cpp srcMLXPathCount.hpp
	g++ srcMLXPathCountTest.o srcMLXPathCount.o -lxml2 -o srcMLXPathCountTest

srcMLXPathCountTest.o : srcMLXPathCountTest.cpp srcMLXPathCountTest.hpp
	g++ -c srcMLXPathCountTest.cpp

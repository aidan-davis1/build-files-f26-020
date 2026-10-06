# Build for srccomplexity

srcComplexity : srcComplexity.o srcMLXPathCount.o
	g++ srcComplexity.o srcMLXPathCount.o -lxml2 -o srcComplexity

srcComplexity.o : srcComplexity.cpp srcMLXPathCount.hpp
	g++ -I/usr/include/libxml2 -c srcComplexity.cpp

srcMLXPathCount.o : srcMLXPathCount.cpp srcMLXPathCount.hpp
	g++ -I/usr/include/libxml2 -c srcMLXPathCount.cpp

srcMLXPathCountTest.o : srcMLXPathCountTest.cpp srcMLXPathCount.hpp
	g++ -c srcMLXPathCountTest.cpp

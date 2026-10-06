# Build for srccomplexity

srcComplexity.o : srcComplexity.cpp srcMLXPathCount.hpp
	g++ -I/usr/include/libxml2 -c srcComplexity.cpp

srcMLXPathCount.o : srcMLXPathCount.cpp srcMLXPathCount.hpp
	g++ -I/usr/include/libxml2 -c srcMLXPathCount.cpp
	
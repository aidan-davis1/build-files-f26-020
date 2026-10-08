# Build for srccomplexity

.PHONY:all
all : srcComplexity srcMLXPathCountTest

srcComplexity : srcComplexity.o srcMLXPathCount.o
	g++ srcComplexity.o srcMLXPathCount.o -lxml2 -o $@

srcComplexity.o : srcComplexity.cpp srcMLXPathCount.hpp
	g++ -I/usr/include/libxml2 -c $<

srcMLXPathCount.o : srcMLXPathCount.cpp srcMLXPathCount.hpp
	g++ -I/usr/include/libxml2 -c $<

srcMLXPathCountTest : srcMLXPathCountTest.o srcMLXPathCount.o
	g++ srcMLXPathCountTest.o srcMLXPathCount.o -lxml2 -o $@

srcMLXPathCountTest.o : srcMLXPathCountTest.cpp srcMLXPathCount.hpp
	g++ -c $<

.PHONY:run
run : srcComplexity
	./srcComplexity srcMLXPathCount.cpp.xml

.PHONY:test
test : srcMLXPathCountTest
	./srcMLXPathCountTest

.PHONY:clean
clean :
	@rm -f srcComplexity srcMLXPathCountTest srcComplexity.o srcMLXPathCount.o srcMLXPathCountTest.o

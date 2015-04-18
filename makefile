INC=-I ~/cpp-netlib-0.11.1-final

default: runner

runner: main.o
	g++ -Wall main.o -lboost_system -lcrypto -lssl -o runner -lpthread

main.o: main.cpp
	g++ -c $(INC) -Wall main.cpp -o main.o

#crear variables

OBJS = main_calcu.o salida.o calculadora.o #Creo un objeto que me reduce lo que trabajo e el makefile BINARY=
#all: programa

# Primer makefile, utilizado para compilar calculadora

#programa: main_calcu.o salida.o calculadora.o
#	g++ -o programa main_calcu.o salida.o calculadora.o

programa: $(OBJS)
	g++ -o programa $(OBJS)

main_calcu.o: main_calcu.cpp funciones.h
	g++ -c main_calcu.cpp

salida.o: salida.cpp funciones.h
	g++ -c salida.cpp

calculadora.o: calculadora.cpp funciones.h
	g++ -c calculadora.cpp

ejecutar:  $(OBJS)
	g++ -o programa $(OBJS)
	./programa


clean:
	rm -f programa *.o

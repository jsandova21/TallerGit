//Realizar un programa el cual solicite su nombre, apellidos, edad y estatura.
Proceso NomApeEdad
	//Declaramos Variables
	Definir nombre Como Caracter;
	Definir apellido1 Como Caracter;
	Definir apellido2 Como Caracter;
	Definir edad Como Entero;
	Definir estatura Como Real;
	//solicitamos nombre, apellidos, edad y estatura
	Escribir "**********Hola, Cual es tu nombre y apellidos?*********";
	Escribir "*Nombre";
	Leer nombre;
	Escribir "*Apellido1:";
	Leer apellido1;
	Escribir "*Apellido2:";
	Leer apellido2;
	Escribir "*Hola"," ",nombre,", y cuanto mides",;
	Leer estatura;
	Escribir "*Mides ",estatura," metros!!!";
	Escribir "Y cuanto años tienes ";
	Leer edad;
	//Por ultlimo impiamImprimimos el mensaje
	Escribir "Guao aparentas menos edad";
	Escribir "*********Listo, fue un gusto conocerte ",nombre," ",apellido1," ;-)*********";
	
FinProceso

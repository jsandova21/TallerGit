//Realizar un programa el cual solicite su nombre y apellidos, también debe capturar nombre 
//y apellidos de su padre y madre. Al finalizar debe imprimir en pantalla el siguiente mensaje 
//"Yo [Nombre Completo], soy hijo de [Nombre de la Madre] y [Nombre del Padre].
Proceso NombApePadres
	// Declaramos las variables
	//Nombres y Apellidos usuario
	Definir nombre Como Caracter;	
	Definir apellido1 Como Caracter;
	Definir apellido2 Como Caracter;
	//Nombres y Apellidos madre
	Definir nom_padre Como Caracter;	
	Definir ape_padre1 Como Caracter;
	Definir ape_padre2 Como Caracter;
	//Nombres y Apellidos padre
	Definir nom_madre Como Caracter;	
	Definir ape_madre1 Como Caracter;
	Definir ape_madre2 Como Caracter;
	//Solicitamos al usuario su nombre y apellidos del usuario
	Escribir "**********Hola, Cual es tu Nombre y Apellidos?*********";
	Escribir "*Nombre:";
	Leer nombre;
	Escribir "*Primer Apellido:";
	Leer apellido1;
	Escribir "*Segundo Apellido:";
	Leer apellido2;
	//Solicitamos al usuario su nombre y apellidos de la madre
	Escribir "**********Y Nombre y Apellidos de tu Madre?*********";
	Escribir "*Nombre:";
	Leer nom_madre;
	Escribir "*Primer Apellido:";
	Leer ape_madre1;
	Escribir "*Segundo Apellido:";
	Leer ape_madre2;
	//Solicitamos al usuario su nombre y apellidos del padre
	Escribir "**********Y Nombre y Apellidos de tu Padre?*********";
	Escribir "*Nombre:";
	Leer nom_padre;
	Escribir "*Primer Apellido:";
	Leer ape_padre1;
	Escribir "*Segundo Apellido:";
	Leer ape_padre2;
	//Por ultlimo impiamImprimimos el mensaje
	Escribir "*Yo ",nombre," soy hijo de ",nom_madre," y ",nom_padre;
	
FinProceso

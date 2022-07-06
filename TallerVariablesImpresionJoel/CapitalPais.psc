//Realizar un programa el cual solicite el nombre de una ciudad capital y el país.
//Al finalizar debe imprimir en pantalla el siguiente mensaje "La ciudad [Nombre de la Ciudad], es la capital del país [Nombre del País]
Proceso CapitalPais
	// Declaramos las variables
	Definir capital Como Caracter;
	Definir pais Como Caracter;
	
	Escribir "**********Hola, dime el nombre de un pais*********";//Solicitamos al usuario su nombre de un pais
	Leer pais;
	Escribir "*Y cual es su capital?";//Luego solicitamos la capital de dicho pais
	Leer capital;
	//Por ultimo imprimimos nuestro mensaje final
	Escribir "La ciudad ",capital," es la capital del país ",pais;
	
FinProceso

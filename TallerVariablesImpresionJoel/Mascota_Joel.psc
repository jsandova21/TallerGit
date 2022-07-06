//Realizar un programa el cual solicite el nombre de su mascota, edad de la mascota, el tipo de mascota y su nombre completo.
//Al finalizar el sistema debe e imprimir en pantalla el siguiente mensaje:
//[Nombre de Mascota] es un(a) [Tipo de Mascota], el cual, tiene [Edad de la Mascota] años de edad y [Nombre Completo] es actualmente su dueño(a).
Proceso Mi_Mascota
	// Declaramos las variables
	Definir mascota Como Caracter;
	Definir edad Como Entero;
	Definir tipo Como Caracter;
	Definir dueno Como Caracter;
	//Solicitamos al usuario nombre
	Escribir "*******Hola, Cual es el Nombre de tu mascota?*********";
	Leer mascota;
	Escribir "*Que edad tiene?";
	Leer edad;
	Escribir "*Que tipo de mascota es?";
	Leer tipo;
	Escribir "*Y cual es su nombre completo?";
	Leer dueno;
	//Imprimimos la informacion solicitada
	Escribir 	mascota," es un(a) ",tipo,", el cual, tiene ",edad," años de edad y ",dueno," es actualmente su dueño(a)";
	
FinProceso

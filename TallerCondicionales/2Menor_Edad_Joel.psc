//Realizar un programa en el cual se solicite la edad de una persona. Si la persona es menor a 18 años,
//deberá mostrar en pantalla: Usted aún es un niño(a).
Proceso Menor_Edad
	// Declaramos las variables
	Definir edad Como Entero;
	// Solicito la edad
	Escribir "*******Hola, Cual es tu edad?*********";
	Leer edad;
	//Uso el condicional para saver si es menor de 18 años
	Si edad < 18 Entonces
		Escribir "*******Usted aún es un niño(a).*********";
	FinSi
FinProceso

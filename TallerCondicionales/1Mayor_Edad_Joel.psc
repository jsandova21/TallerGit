//Realizar un programa en el cual se solicite la edad de una persona.
//Si la persona es mayor o igual a 18 años, deberá mostrar en pantalla: Usted es mayor de edad.
Proceso Mayor_Edad
	// Declaramos las variables
	Definir edad Como Entero;
	// Solicito la edad
	Escribir "*******Hola, Cual es tu edad?*********";
	Leer edad;
	//Uso el condicional para saver si es mayor de 18 años
	Si edad > 18 Entonces
		Escribir "*******Usted es mayor de edad.*********";
	FinSi
FinProceso

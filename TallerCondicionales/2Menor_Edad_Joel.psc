//Realizar un programa en el cual se solicite la edad de una persona. Si la persona es menor a 18 a�os,
//deber� mostrar en pantalla: Usted a�n es un ni�o(a).
Proceso Menor_Edad
	// Declaramos las variables
	Definir edad Como Entero;
	// Solicito la edad
	Escribir "*******Hola, Cual es tu edad?*********";
	Leer edad;
	//Uso el condicional para saver si es menor de 18 a�os
	Si edad < 18 Entonces
		Escribir "*******Usted a�n es un ni�o(a).*********";
	FinSi
FinProceso

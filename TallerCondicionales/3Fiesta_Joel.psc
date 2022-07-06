//Realizar un programa en el cual se solicite el nombre, apellidos y edad de la persona.
//Si la persona es mayor o igual a 18 años, entonce se deberá imprimir en pantalla [Nombre completo] usted es mayor de edad,
//por lo tanto puede entrar a la fiesta. Si la edad de la persona es menor que 18 años, entonces,deberá imprimirse el siguiente mensaje:
//[Nombre completo] usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.
Proceso Fiesta
	// Declaramos las variables
	Definir nombre Como Caracter;
	Definir apellido1 Como Caracter;
	Definir apellido2 Como Caracter;
	Definir edad Como Entero;
	// Solicito la edad
	Escribir "*******Hola, Cual es tu nombre?*********";
	Leer nombre;
	Escribir "*******Cual es tu Primer Apellido?*********";
	Leer apellido1;
	Escribir "*******Cual es tu Segundo Apellido?*********";
	Leer apellido2;
	Escribir "*******Y tu edad, por favor*********";
	Leer edad;
	//Uso el condicional para saver si es menor de 18 años
	Si edad > 18 Entonces
		Escribir "Bienvenido ", nombre," "," ",apellido1," ",apellido2," usted es mayor de edad por lo tanto puede entrar a la fiesta";
	SiNo
		Escribir "Hola ", nombre," "," ",apellido1," ",apellido2," usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.";
	FinSi
FinProceso

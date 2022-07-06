//La Secretaría de Salud Municipal requiere de una aplicación que le permita calcular el IMC (Índice de masa corporal)
//y requiere los datos peso en kilogramos y estatura en metros Para cada persona encuestada adicional a los datos suministrados,
// debe mostrar el resultado para cada uno y establecer en qué rango se encuentra (bajo peso, normal, sobrepeso y obeso).
Proceso IMC
	// Declaramos las variables
	Definir nombre Como Caracter;
	Definir apellido Como Caracter;
	Definir peso Como Entero;
	Definir estatura Como Real;
	Definir indice Como Real;
	// Mensaje de bienvenida
	Escribir "**Hola Bienvenido(a) al programa de calculo de IMC (Indice de Masa Corporal)**";
	Escribir "****************de La Secretaría de Salud Municipal**************************";
	Escribir "*Por favor ingrese la siguiente informacion";
	Escribir "*Nombre";
	Leer nombre;
	Escribir "*Aprellido";
	Leer apellido;
	Escribir "*Peso en Kgrs";
	Leer peso;
	Escribir "*Estatura en metros";
	Leer estatura;
	//calculamos el IMC
	indice <- peso/(estatura*estatura);
	
	Si indice<18.5 Entonces
		Escribir "*Hola ",nombre," ",apellido," tu IMC es ",indice;
		Escribir "*Segun la tabla te encuentras en Bajo Peso";
	FinSi
	Si indice>18.5 Y indice<25 Entonces
		Escribir "*Hola ",nombre," ",apellido," tu IMC es ",indice;
		Escribir "*Segun la tabla te encuentras en Peso Normal";
	FinSi
	Si indice>25 Y indice<30 Entonces
		Escribir "*Hola ",nombre," ",apellido," tu IMC es ",indice;
		Escribir "*Segun la tabla tienes Sobrepeso";
	FinSi
	Si indice>30 Entonces
		Escribir "*Hola ",nombre," ",apellido," tu IMC es ",indice;
		Escribir "*Segun la tabla tienes Obesidad";
	FinSi
	
	
	
FinProceso

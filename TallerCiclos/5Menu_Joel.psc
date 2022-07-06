//Utilizando el ciclo que usted desee, crear un menú de ejecución infinita hasta que el usuario desee terminar dicho ciclo.
Proceso Menu
	// Declaramos las variables
	Definir salir Como Caracter;
	Definir nombre Como Caracter;
	Definir opcion Como Entero;
	// Valores iniciales
	salir <- "N";
	//****************************************
	Repetir
		Escribir "********************************";
		Escribir "*******Menu de usuario**********";
		Escribir "********************************";
		Escribir "*1 => Captura nombre           *";
		Escribir "*2 => Saludar persona          *";
		Escribir "*3 => Salir del sistema        *";
		Escribir "********************************";
		Escribir "*Ingrese una opción (1,2 ó 3)***";
		Escribir "********************************";
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir "********************************";
				Escribir "*******Ingrese su nombre********";
				Escribir "********************************";
				Leer nombre;
			2:
				Escribir "********************************";
				Escribir "***Hola ",nombre," bien o no!!!*";
				Escribir "********************************";
			3:
				Escribir "Deseas salir del sistema? (S/N)";
				Leer salir;
			De Otro Modo:
				Escribir "********************************";
				Escribir "*Seleccione una opcion correcta*";
				Escribir "********************************";
		FinSegun
	Hasta Que salir = "S"
FinProceso

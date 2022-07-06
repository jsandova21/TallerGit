//El profesor de geometr�a est� explicando a sus estudiantes las f�rmulas para calcular el �rea de diferentes figuras geom�tricas,
//para ello requiere una aplicaci�n que le facilite el ejercicio solicit�ndole los valores al estudiante.
//La aplicaci�n debe permitir que el estudiante seleccione si desea calcular el �rea de un rect�ngulo, tri�ngulo o trapecio.
//No olvide solicitar los datos necesarios para realizar cada c�lculo y mostrar su respectivo resultado.
Proceso Geometria
	// Declaramos las variables
	Definir figura Como Entero;
	Definir base Como Real;
	Definir base2 Como Real;
	Definir altura Como Real;
	Definir area Como Real;
	// Mensaje de bienvenida
	Escribir "**Hola Bienvenido(a) a la calculadora de areas";
	Escribir "*Elige una figura";
	Escribir "1=>Rect�ngulo";
	Escribir "2=>Triangulo";
	Escribir "3=>Trapecio";
	Leer figura;
	Segun figura Hacer
		1:
			Escribir "Ingrese la base del rectangulo";
			Leer base;
			Escribir "Ingrese la altura del rectangulo";
			Leer altura;
			area <- (base*altura);
			Escribir "El area del rectangulo de base= ",base," y altura= ",altura," es ",area," unidades cuadradas";
		2:
			Escribir "Ingrese la base del triangulo";
			Leer base;
			Escribir "Ingrese la altura del triangulo";
			Leer altura;
			area <- (base*altura)/2;
			Escribir "El area del triangulo de base= ",base," y altura= ",altura," es de: ",area," unidades cuadradas";
		3:
			Escribir "Ingrese la base 1 del trapecio";
			Leer base;
			Escribir "Ingrese la base 2 del trapecio";
			Leer base2;
			Escribir "Ingrese la altura del trapecio";
			Leer altura;
			area <- ((base+base2)*altura)/2;
			Escribir "El area del trapecio de base1= ",base," base2= ",base2," y altura= ",altura," es de: ",area," unidades cuadradas";
		De Otro Modo:
			Escribir "*Ingrese una opcion valida";
	FinSegun
FinProceso

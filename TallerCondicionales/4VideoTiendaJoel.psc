//La video tienda que presta sus servicios de alquiler de películas a los usuarios del barrio el Porvenir,
//requiere de una aplicación que permita registrar el alquiler de las películas que adquieren sus usuarios.
//Para cada usuario se debe permitir la opción de alquilar película, consultar películas disponibles y recibir película en la video tienda
//con la opción de realizar anotaciones sobre estas si se llegan a presentar daños u otra novedad sobre la película.
Proceso VideoTienda
	// Declaramos las variables
	Definir usuario Como Caracter;
	Definir cod_peli Como Caracter;
	Definir edo_peli Como Caracter;
	Definir estado Como Entero;
	Definir opcion Como Entero;
	// Solicitamos el nombre del cliente o usuario 
	Escribir "*Hola Bienvenido a tu Video Porevenir!!!";
	Escribir "*Ingrese nombre de usuario";
	Leer usuario;
	Escribir "*Que deceas hacer (Elige una opcion)";
	Escribir "1=>Alquilar Pelicula";
	Escribir "2=>Consultar Peliculas";
	Escribir "3=>Recibir Pelicula";
	Leer opcion;
	Segun opcion Hacer
		1:
			Escribir "*Ingrese Codigo de la pelicula";
			Leer cod_peli;
			Escribir "*Gracias por su compra ;-)";
		2:
			Escribir "*************Listado de Peliculas**********************************";
			Escribir "*Morbius (Codigo 001)";
			Escribir "*Muerte en el Nilo (Codigo 002)";
			Escribir "*Animales fantásticos: Los secretos de Dumbledore (Codigo 003)";
			Escribir "*Scream (Codigo 004)";
			Escribir "*Moonfall (Codigo 005)";
			Escribir "*Ojos de fuego (Codigo 006)";
			Escribir "*Agentes 355 (Codigo 007)";
			Escribir "*Casate conmigo (Codigo 008)";
			Escribir "*Jurassic World: Dominion (Codigo 009)";
			Escribir "*El método Williams (Codigo 010)";
			Escribir "*******************************************************************";
		3:
			Escribir "*Ingrese Codigo de la pelicula";
			Leer cod_peli;
			Escribir "En que estado recibio la pelicula? (Elija una opcion)";
			Escribir "1=>En buen estado";
			Escribir "2=>Con Detalles o en mal estado";
			Leer estado;
			Segun estado Hacer
				1:
					Escribir "*Puede proceder a recibir la pelicula";
					Escribir "*Gracias por su compra vuelva pronto ;-)"; 
				2:
					Escribir "*Por favor especifique ";
					Leer edo_peli;
					Escribir "*La novedad (",edo_peli,") fue registrada";
					Escribir "*Sugerir u orientar al usuario sobre el mejor trato de las pelicilas";
				De Otro Modo:
					Escribir "*Ingrese una opcion valida";
			FinSegun
		De Otro Modo:
			Escribir "*Ingrese una opcion valida";
	FinSegun
FinProceso
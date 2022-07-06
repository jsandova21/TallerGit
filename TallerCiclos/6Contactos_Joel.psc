//Se está creando una aplicación que va a estar conectada con un prototipo que permita almacenar contactos telefónicos en el dispositivo.
//Para ello cada contacto debe contener nombre completo, teléfono y organización.
//Se requiere que la aplicación permita añadir 3 contactos verificando que el número no esté almacenado,
//buscar contactos almacenados y eliminar contactos si el usuario lo requiere.
//Recuerde que el sistema debe terminar cuando el usuario así lo indique.
Proceso Contactos
	// Declaramos las variables
	Definir telf,nomb0,telf0,org0,nomb1,telf1,org1,nomb2,telf2,org2,salir Como Caracter;
	Definir opc Como Entero;
	// Valores iniciales
	salir <- "n";
	telf0 <- "";
	telf1 <- "";
	telf2 <- "";
	//****************************************
	Repetir//Usamos el ciclo Repetir hasta para mostrar el menu de opciones hasque el usiario desee salir del sistema
		Escribir "****************************************";
		Escribir "*      CONTACTOS TELEFONICOS           *";
		Escribir "****************************************";
		Escribir "*1 => Ingresar Contacto                *";
		Escribir "*2 => Buscar Contacto                  *";
		Escribir "*3 => Borrar Contacto                  *";
		Escribir "*4 => Salir                            *";
		Escribir "****************************************";
		Escribir "*     Ingrese una opción (1,2,3 ó 4)   *";
		Escribir "****************************************";
		Leer opc;
		Segun opc Hacer
			1:
				Limpiar Pantalla;
				Escribir "****************************************";
				Escribir "******Ingrese Datos del Contacto********";
				Escribir "****************************************";
				Escribir "*Telefono";
				Leer telf;
				Si (telf = telf0 O telf = telf1 O telf = telf2) Entonces
					Escribir "****************************************";
					Escribir "*        Contacto ya existe!           *";
					Escribir "****************************************";
				SiNo
					Si telf0 = "" Entonces
						telf0 <- telf;
						Escribir "*Nombre Completo";
						Leer nomb0;
						Escribir "*Organizacion";
						Leer org0;
						Escribir "****************************************";
						Escribir "*        Contacto almacenado!          *";
						Escribir "****************************************";
					SiNo
						Si telf1 = "" Entonces
							telf1 <- telf;
							Escribir "*Nombre Completo";
							Leer nomb1;
							Escribir "*Organizacion";
							Leer org1;
							Escribir "****************************************";
							Escribir "*        Contacto almacenado!          *";
							Escribir "****************************************";
						SiNo
							Si telf2 = "" Entonces
								telf2 <- telf;
								Escribir "*Nombre Completo";
								Leer nomb2;
								Escribir "*Organizacion";
								Leer org2;
								Escribir "****************************************";
								Escribir "*        Contacto almacenado!          *";
								Escribir "****************************************";
							SiNo
								Escribir "****************************************";
								Escribir "*   No hay espacio para almacenar      *";
								Escribir "****************************************";
							FinSi
						FinSi
					FinSi
				FinSi
				Escribir "****************************************";
				Escribir "*  Deseas salir del sistema? (s/n)     *";
				Escribir "****************************************";
				Leer salir;
				Limpiar Pantalla;
			2:
				Limpiar Pantalla;
				Escribir "****************************************";
				Escribir "*         Buscar Contacto              *";
				Escribir "****************************************";
				Escribir "Ingrese Nro de Telf.";
				Leer telf;
				Si (telf <> telf0 Y telf <> telf1 Y telf <> telf2) Entonces
					Escribir "****************************************";
					Escribir "*        Contacto NO existe            *";
					Escribir "****************************************";
				SiNo
					Si telf0 = telf Entonces
						Escribir "****************************************";
						Escribir "*         Datos del contacto           *";
						Escribir "****************************************";
						Escribir "* Telefono: ",telf0;
						Escribir "* Nombre Completo: ",nomb0;
						Escribir "* Organizacion: ",org0;
						Escribir "****************************************";
					SiNo
						Si telf1 = telf Entonces
							Escribir "****************************************";
							Escribir "*         Datos del contacto           *";
							Escribir "****************************************";
							Escribir "* Telefono: ",telf1;
							Escribir "* Nombre Completo: ",nomb1;
							Escribir "* Organizacion: ",org1;
							Escribir "****************************************";
						SiNo
							Si telf2 = telf Entonces
								Escribir "****************************************";
								Escribir "*         Datos del contacto           *";
								Escribir "****************************************";
								Escribir "* Telefono: ",telf2;
								Escribir "* Nombre Completo: ",nomb2;
								Escribir "* Organizacion: ",org2;
								Escribir "****************************************";
							FinSi
						FinSi
					FinSi
				FinSi
				Escribir "****************************************";
				Escribir "*  Deseas salir del sistema? (s/n)     *";
				Escribir "****************************************";
				Leer salir;
				Limpiar Pantalla;
			3:
				Limpiar Pantalla;
				Escribir "****************************************";
				Escribir "*         Borrar Contacto              *";
				Escribir "****************************************";
				Escribir "Ingrese Nro de Telf.";
				Leer telf;
				Si (telf <> telf0 Y telf <> telf1 Y telf <> telf2) Entonces
					Escribir "****************************************";
					Escribir "*        Contacto NO existe            *";
					Escribir "****************************************";
				SiNo
					Si telf0 = telf Entonces
						telf0 <- "";
						nomb0 <- "";
						org0 <- "";
						Escribir "****************************************";
						Escribir "*     Contacto ",telf," fue borrado    *";
						Escribir "****************************************";
					SiNo
						Si telf1 = telf Entonces
							telf1 <- "";
							nomb1 <- "";
							org1 <- "";
							Escribir "****************************************";
							Escribir "*     Contacto ",telf," fue borrado    *";
							Escribir "****************************************";
						SiNo
							Si telf2 = telf Entonces
								telf2 <- "";
								nomb2 <- "";
								org2 <- "";
								Escribir "****************************************";
								Escribir "*     Contacto ",telf," fue borrado    *";
								Escribir "****************************************";
							FinSi
						FinSi
					FinSi
				FinSi
				Escribir "****************************************";
				Escribir "*  Deseas salir del sistema? (s/n)     *";
				Escribir "****************************************";
				Leer salir;
				Limpiar Pantalla;
			4:
				Limpiar Pantalla;
				Escribir "****************************************";
				Escribir "*  Deseas salir del sistema? (s/n)     *";
				Escribir "****************************************";
				Leer salir;
				Limpiar Pantalla;
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "****************************************";
				Escribir "*Ingrese una opcion valida (1,2,3 ó 4) *";
				Escribir "****************************************";
		FinSegun
	Hasta Que salir = "s"
FinProceso

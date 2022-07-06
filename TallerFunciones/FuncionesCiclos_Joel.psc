//***********************************************************************************
Proceso FuncionesCiclos
	// ********************Declaramos las variables**********************************
	Definir salir Como Caracter;
	Definir func Como Entero;
	//****************************************
	Repetir//Usamos el ciclo Repetir hasta para mostrar el menu de opciones hasque el usiario desee salir del sistema
		Escribir "*Que funcion desea probar";
		Escribir "1=>Contactos";
		Escribir "2=>Parqueadero";
		Escribir "3=>Autoescuela";
		Escribir "4=>Salir";
		salir <- "n";
		Leer func;
		Segun func Hacer
			1:
				Escribir "***************************************************************************************";
				Escribir "//********************************Funcion Contactos************************************";
				Contactos();
				Escribir "***************************************************************************************";
			2:
				Escribir "***************************************************************************************";
				Escribir "//********************************Funcion Parqueadero***********************************";
				Parqueadero();
				Escribir "***************************************************************************************";
			3:
				Escribir "***************************************************************************************";
				Escribir "//****************************Funcion Autoescuela**************************************";
				Autoescuela();
				Escribir "***************************************************************************************";
			4:
				Limpiar Pantalla;
				Escribir "****************************************";
				Escribir "*  Deseas salir del sistema? (s/n)     *";
				Escribir "****************************************";
				Leer salir;
				Limpiar Pantalla;
			De Otro Modo:
				Escribir "*Operacion invalida";
		FinSegun
		Limpiar Pantalla;
	Hasta Que salir = "s"
FinProceso
//***********************************************************************************
//*********************************Funcion Contactos*********************************
SubProceso Contactos ()
	// Declaramos las variables
	Definir telf,nomb0,telf0,org0,nomb1,telf1,org1,nomb2,telf2,org2,salir Como Caracter;
	Definir opc Como Entero;
	// Valores iniciales
	salir <- "n";
	telf0 <- "";
	telf1 <- "";
	telf2 <- "";
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
				Escribir "*Deseas salir de Func Contactos? (s/n) *";
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
				Escribir "*Deseas salir de Func Contactos? (s/n) *";
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
				Escribir "*Deseas salir de Func Contactos? (s/n) *";
				Escribir "****************************************";
				Leer salir;
				Limpiar Pantalla;
			4:
				Limpiar Pantalla;
				Escribir "****************************************";
				Escribir "*Deseas salir de Func Contactos? (s/n) *";
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
	
FinSubProceso
//***********************************************************************************
//*********************************Funcion Parqueadero*********************************
SubProceso Parqueadero ()
	// Declaramos las variables
	Definir placa,placa0,marca0,nomb0,telf0,placa1,marca1,nomb1,telf1,placa2,marca2,nomb2,telf2 Como Caracter;
	Definir placa3,marca3,nomb3,telf3,placa4,marca4,nomb4,telf4,salir Como Caracter;
	Definir opc Como Entero;
	// Valores iniciales
	salir <- "n";
	placa0 <- "";
	placa1 <- "";
	placa2 <- "";
	placa3 <- "";
	placa4 <- "";
	//****************************************
	Repetir
		Escribir "****************************************";
		Escribir "*Parqueadero El Guardian - Bienvenido  *";
		Escribir "****************************************";
		Escribir "*1 => Ingresar Vehiculo                *";
		Escribir "*2 => Buscar Vehiculo                  *";
		Escribir "*3 => Retirar Vehiculo                 *";
		Escribir "*4 => Salir                            *";
		Escribir "****************************************";
		Escribir "*     Ingrese una opción (1,2,3 ó 4)   *";
		Escribir "****************************************";
		Leer opc;
		Segun opc Hacer
			1:
				Limpiar Pantalla;
				Escribir "****************************************";
				Escribir "* Ingrese Datos del Vehiculo y Cliente *";
				Escribir "****************************************";
				Escribir "*Placa";
				Leer placa;
				Si (placa = placa0 O placa = placa1 O placa = placa2 O placa = placa3 O placa = placa4) Entonces
					Escribir "****************************************";
					Escribir "*   Vehiculo ya esta registrado        *";
					Escribir "****************************************";
				SiNo
					Si placa0 = "" Entonces
						placa0 <- placa;
						Escribir "*Marca";
						Leer marca0;
						Escribir "*Nombre Completo";
						Leer nomb0;
						Escribir "*Telefono";
						Leer telf0;
						Escribir "****************************************";
						Escribir "*        Vehiculo Registrado!          *";
						Escribir "****************************************";
					SiNo
						Si placa1 = "" Entonces
							placa1 <- placa;
							Escribir "*Marca";
							Leer marca1;
							Escribir "*Nombre Completo";
							Leer nomb1;
							Escribir "*Telefono";
							Leer telf1;
							Escribir "****************************************";
							Escribir "*        Vehiculo Registrado!          *";
							Escribir "****************************************";
						SiNo
							Si placa2 = "" Entonces
								placa2 <- placa;
								Escribir "*Marca";
								Leer marca2;
								Escribir "*Nombre Completo";
								Leer nomb2;
								Escribir "*Telefono";
								Leer telf2;
								Escribir "****************************************";
								Escribir "*        Vehiculo Registrado!          *";
								Escribir "****************************************";
							SiNo
								Si placa3 = "" Entonces
									placa3 <- placa;
									Escribir "*Marca";
									Leer marca3;
									Escribir "*Nombre Completo";
									Leer nomb3;
									Escribir "*Telefono";
									Leer telf3;
									Escribir "****************************************";
									Escribir "*        Vehiculo Registrado!          *";
									Escribir "****************************************";
								SiNo
									Si placa4 = "" Entonces
										placa4 <- placa;
										Escribir "*Marca";
										Leer marca4;
										Escribir "*Nombre Completo";
										Leer nomb4;
										Escribir "*Telefono";
										Leer telf4;
										Escribir "****************************************";
										Escribir "*        Vehiculo Registrado!          *";
										Escribir "****************************************";
									SiNo
										Escribir "****************************************";
										Escribir "*     No hay lugar disponible          *";
										Escribir "****************************************";
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
				Escribir "*****************************************";
				Escribir "*Deseas salir de Func Parqueadero? (s/n) *";
				Escribir "*****************************************";
				Leer salir;
				Limpiar Pantalla;
			2:
				Limpiar Pantalla;
				Escribir "****************************************";
				Escribir "*         Buscar Vehiculo              *";
				Escribir "****************************************";
				Escribir "Ingrese la placa del Vehiculo.";
				Leer placa;
				Si placa0 = placa Entonces
					Escribir "****************************************";
					Escribir "*         Datos del vehiculo           *";
					Escribir "****************************************";
					Escribir "* Placa: ",placa0;
					Escribir "* Marca: ",marca0;
					Escribir "* Cliente: ",nomb0;
					Escribir "* Telefono: ",telf0;
					Escribir "****************************************";
				SiNo
					Si placa1 = placa Entonces
						Escribir "****************************************";
						Escribir "*         Datos del vehiculo           *";
						Escribir "****************************************";
						Escribir "* Placa: ",placa1;
						Escribir "* Marca: ",marca1;
						Escribir "* Cliente: ",nomb1;
						Escribir "* Telefono: ",telf1;
						Escribir "****************************************";
					SiNo
						Si placa2 = placa Entonces
							Escribir "****************************************";
							Escribir "*         Datos del vehiculo           *";
							Escribir "****************************************";
							Escribir "* Placa: ",placa2;
							Escribir "* Marca: ",marca2;
							Escribir "* Cliente: ",nomb2;
							Escribir "* Telefono: ",telf2;
							Escribir "****************************************";
						SiNo
							Si placa3 = placa Entonces
								Escribir "****************************************";
								Escribir "*         Datos del vehiculo           *";
								Escribir "****************************************";
								Escribir "* Placa: ",placa3;
								Escribir "* Marca: ",marca3;
								Escribir "* Cliente: ",nomb3;
								Escribir "* Telefono: ",telf3;
								Escribir "****************************************";
							SiNo
								Si placa4 = placa Entonces
									Escribir "****************************************";
									Escribir "*         Datos del vehiculo           *";
									Escribir "****************************************";
									Escribir "* Placa: ",placa4;
									Escribir "* Marca: ",marca4;
									Escribir "* Cliente: ",nomb4;
									Escribir "* Telefono: ",telf4;
									Escribir "****************************************";
								SiNo
									Escribir "****************************************";
									Escribir "*         Placa NO existe              *";
									Escribir "****************************************";
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
				Escribir "*****************************************";
				Escribir "*Deseas salir de Func Parqueadero? (s/n) *";
				Escribir "*****************************************";
				Leer salir;
				Limpiar Pantalla;
			3:
				Limpiar Pantalla;
				Escribir "****************************************";
				Escribir "*         Retirar Vehiculo             *";
				Escribir "****************************************";
				Escribir "Ingrese la placa del Vehiculo.";
				Leer placa;
				Si placa0 = placa Entonces
					placa0 <- "";
					marca0 <- "";
					nomb0 <- "";
					telf0 <- "";
					Escribir "****************************************";
					Escribir "*Puede retirar el vehiculo placa ",placa;
					Escribir "****************************************";
				SiNo
					Si placa1 = placa Entonces
						placa1 <- "";
						marca1 <- "";
						nomb1 <- "";
						telf1 <- "";
						Escribir "****************************************";
						Escribir "*Puede retirar el vehiculo placa ",placa;
						Escribir "****************************************";
					SiNo
						Si placa2 = placa Entonces
							placa2 <- "";
							marca2 <- "";
							nomb2 <- "";
							telf2 <- "";
							Escribir "****************************************";
							Escribir "*Puede retirar el vehiculo placa ",placa;
							Escribir "****************************************";
						SiNo
							Si placa3 = placa Entonces
								placa3 <- "";
								marca3 <- "";
								nomb3 <- "";
								telf3 <- "";
								Escribir "****************************************";
								Escribir "*Puede retirar el vehiculo placa ",placa;
								Escribir "****************************************";
							SiNo
								Si placa4 = placa Entonces
									placa4 <- "";
									marca4 <- "";
									nomb4 <- "";
									telf4 <- "";
									Escribir "****************************************";
									Escribir "*Puede retirar el vehiculo placa ",placa;
									Escribir "****************************************";
								SiNo
									Escribir "****************************************";
									Escribir "*         Placa NO existe              *";
									Escribir "****************************************";
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
				Escribir "*****************************************";
				Escribir "*Deseas salir de Func Parqueadero? (s/n) *";
				Escribir "*****************************************";
				Leer salir;
				Limpiar Pantalla;
			4:
				Limpiar Pantalla;
				Escribir "*****************************************";
				Escribir "*Deseas salir de Func Parqueadero? (s/n) *";
				Escribir "*****************************************";
				Leer salir;
				Limpiar Pantalla;
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "****************************************";
				Escribir "*Ingrese una opcion valida (1,2,3 ó 4) *";
				Escribir "****************************************";
		FinSegun
	Hasta Que salir = "s"
FinSubProceso
//***********************************************************************************
//*********************************Funcion Contactos*********************************
SubProceso Autoescuela ()
	// Declaramos las variables
	Definir di,curso0,di0,nomb0,telf0,curso1,di1,nomb1,telf1,curso2,di2,nomb2,telf2,curso3,di3,nomb3,telf3 Como Caracter;
	Definir curso4,di4,nomb4,telf4,curso5,di5,nomb5,telf5,curso6,di6,nomb6,telf6,curso7,di7,nomb7,telf7,salir Como Caracter;
	Definir opc Como Entero;
	// Valores iniciales
	salir <- "n";
	di0 <- "";
	di1 <- "";
	di2 <- "";
	di3 <- "";
	di4 <- "";
	di5 <- "";
	di6 <- "";
	di7 <- "";
	curso0 <- "";
	curso1 <- "";
	curso2 <- "";
	curso3 <- "";
	curso4 <- "";
	curso5 <- "";
	curso6 <- "";
	curso7 <- "";
	//****************************************
	Repetir
		Escribir "****************************************";
		Escribir "*Autoescuela El Maestro - Bienvenido   *";
		Escribir "****************************************";
		Escribir "*1 => Ingresar Alumno                  *";
		Escribir "*2 => Consultar                        *";
		Escribir "*3 => Calificar Curso                  *";
		Escribir "*4 => Salir                            *";
		Escribir "****************************************";
		Escribir "*     Ingrese una opción (1,2,3 ó 4)   *";
		Escribir "****************************************";
		Leer opc;
		Segun opc Hacer
			1:
				Limpiar Pantalla;
				Escribir "****************************************";
				Escribir "* Ingrese Datos del Alumno             *";
				Escribir "****************************************";
				Escribir "*Documento de Identidad";
				Leer di;
				Si (di = di0 O di = di1 O di = di2 O di = di3 O di = di4 O di = di5 O di = di6 O di = di7) Entonces
					Escribir "****************************************";
					Escribir "*    Alumno ya esta registrado         *";
					Escribir "****************************************";
				SiNo
					Si di0 = "" Entonces
						di0 <- di;
						Escribir "*Nombre Completo";
						Leer nomb0;
						Escribir "*Telefono";
						Leer telf0;
						Escribir "****************************************";
						Escribir "*         Alumno Registrado!           *";
						Escribir "****************************************";
					SiNo
						Si di1 = "" Entonces
							di1 <- di;
							Escribir "*Nombre Completo";
							Leer nomb1;
							Escribir "*Telefono";
							Leer telf1;
							Escribir "****************************************";
							Escribir "*         Alumno Registrado!           *";
							Escribir "****************************************";
						SiNo
							Si di2 = "" Entonces
								di2 <- di;
								Escribir "*Nombre Completo";
								Leer nomb2;
								Escribir "*Telefono";
								Leer telf2;
								Escribir "****************************************";
								Escribir "*         Alumno Registrado!           *";
								Escribir "****************************************";
							SiNo
								Si di3 = "" Entonces
									di3 <- di;
									Escribir "*Nombre Completo";
									Leer nomb3;
									Escribir "*Telefono";
									Leer telf3;
									Escribir "****************************************";
									Escribir "*         Alumno Registrado!           *";
									Escribir "****************************************";
								SiNo
									Si di4 = "" Entonces
										di4 <- di;
										Escribir "*Nombre Completo";
										Leer nomb4;
										Escribir "*Telefono";
										Leer telf4;
										Escribir "****************************************";
										Escribir "*         Alumno Registrado!           *";
										Escribir "****************************************";
									SiNo
										Si di5 = "" Entonces
											di5 <- di;
											Escribir "*Nombre Completo";
											Leer nomb5;
											Escribir "*Telefono";
											Leer telf5;
											Escribir "****************************************";
											Escribir "*         Alumno Registrado!           *";
											Escribir "****************************************";
										SiNo
											Si di6 = "" Entonces
												di6 <- di;
												Escribir "*Nombre Completo";
												Leer nomb6;
												Escribir "*Telefono";
												Leer telf6;
												Escribir "****************************************";
												Escribir "*         Alumno Registrado!           *";
												Escribir "****************************************";
											SiNo
												Si di7 = "" Entonces
													di7 <- di;
													Escribir "*Nombre Completo";
													Leer nomb7;
													Escribir "*Telefono";
													Leer telf7;
													Escribir "****************************************";
													Escribir "*         Alumno Registrado!           *";
													Escribir "****************************************";
												SiNo
													Escribir "****************************************";
													Escribir "*     No hay cupos disponible          *";
													Escribir "****************************************";
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
				Escribir "******************************************";
				Escribir "*Deseas salir de Func Autoescuela? (s/n) *";
				Escribir "******************************************";
				Leer salir;
				Limpiar Pantalla;
			2:
				Limpiar Pantalla;
				Escribir "****************************************";
				Escribir "*         Consultar alumno             *";
				Escribir "****************************************";
				Escribir "*Documento de Identidad";
				Leer di;
				Limpiar Pantalla;
				Si di0 = di Entonces
					Escribir "****************************************";
					Escribir "*         Datos del alumno             *";
					Escribir "****************************************";
					Escribir "* Documento Nro: ",di0;
					Escribir "* Nombre: ",nomb0;
					Escribir "* Telefono: ",telf0;
					Si curso0 = "a" Entonces
						Escribir "* Curso Aprobado Felicidades!!!";
					FinSi
					Si curso0 = "r" Entonces
						Escribir "* Curso Reprobado intentalo de nuevo";
					FinSi
					Si curso0 = "" Entonces
						Escribir "* Curso en proceso";
					FinSi
					Escribir "****************************************";
				SiNo
					Si di1 = di Entonces
						Escribir "****************************************";
						Escribir "*         Datos del alumno             *";
						Escribir "****************************************";
						Escribir "* Documento Nro: ",di1;
						Escribir "* Nombre: ",nomb1;
						Escribir "* Telefono: ",telf1;
						Si curso1 = "a" Entonces
							Escribir "* Curso Aprobado Felicidades!!!";
						FinSi
						Si curso1 = "r" Entonces
							Escribir "* Curso Reprobado intentalo de nuevo";
						FinSi
						Si curso1 = "" Entonces
							Escribir "* Curso en proceso";
						FinSi
						Escribir "****************************************";
					SiNo
						Si di2 = di Entonces
							Escribir "****************************************";
							Escribir "*         Datos del alumno             *";
							Escribir "****************************************";
							Escribir "* Documento Nro: ",di2;
							Escribir "* Nombre: ",nomb2;
							Escribir "* Telefono: ",telf2;
							Si curso2 = "a" Entonces
								Escribir "* Curso Aprobado Felicidades!!!";
							FinSi
							Si curso2 = "r" Entonces
								Escribir "* Curso Reprobado intentalo de nuevo";
							FinSi
							Si curso2 = "" Entonces
								Escribir "* Curso en proceso";
							FinSi
							Escribir "****************************************";
						SiNo
							Si di3 = di Entonces
								Escribir "****************************************";
								Escribir "*         Datos del alumno             *";
								Escribir "****************************************";
								Escribir "* Documento Nro: ",di3;
								Escribir "* Nombre: ",nomb3;
								Escribir "* Telefono: ",telf3;
								Si curso3 = "a" Entonces
									Escribir "* Curso Aprobado Felicidades!!!";
								FinSi
								Si curso3 = "r" Entonces
									Escribir "* Curso Reprobado intentalo de nuevo";
								FinSi
								Si curso3 = "" Entonces
									Escribir "* Curso en proceso";
								FinSi
								Escribir "****************************************";
							SiNo
								Si di4 = di Entonces
									Escribir "****************************************";
									Escribir "*         Datos del alumno             *";
									Escribir "****************************************";
									Escribir "* Documento Nro: ",di4;
									Escribir "* Nombre: ",nomb4;
									Escribir "* Telefono: ",telf4;
									Si curso4 = "a" Entonces
										Escribir "* Curso Aprobado Felicidades!!!";
									FinSi
									Si curso4 = "r" Entonces
										Escribir "* Curso Reprobado intentalo de nuevo";
									FinSi
									Si curso4 = "" Entonces
										Escribir "* Curso en proceso";
									FinSi
									Escribir "****************************************";
								SiNo
									Si di5 = di Entonces
										Escribir "****************************************";
										Escribir "*         Datos del alumno             *";
										Escribir "****************************************";
										Escribir "* Documento Nro: ",di5;
										Escribir "* Nombre: ",nomb5;
										Escribir "* Telefono: ",telf5;
										Si curso5 = "a" Entonces
											Escribir "* Curso Aprobado Felicidades!!!";
										FinSi
										Si curso5 = "r" Entonces
											Escribir "* Curso Reprobado intentalo de nuevo";
										FinSi
										Si curso5 = "" Entonces
											Escribir "* Curso en proceso";
										FinSi
										Escribir "****************************************";
									SiNo
										Si di6 = di Entonces
											Escribir "****************************************";
											Escribir "*         Datos del alumno             *";
											Escribir "****************************************";
											Escribir "* Documento Nro: ",di6;
											Escribir "* Nombre: ",nomb6;
											Escribir "* Telefono: ",telf6;
											Si curso6 = "a" Entonces
												Escribir "* Curso Aprobado Felicidades!!!";
											FinSi
											Si curso6 = "r" Entonces
												Escribir "* Curso Reprobado intentalo de nuevo";
											FinSi
											Si curso6 = "" Entonces
												Escribir "* Curso en proceso";
											FinSi
											Escribir "****************************************";
										SiNo
											Si di7 = di Entonces
												Escribir "****************************************";
												Escribir "*         Datos del alumno             *";
												Escribir "****************************************";
												Escribir "* Documento Nro: ",di7;
												Escribir "* Nombre: ",nomb7;
												Escribir "* Telefono: ",telf7;
												Si curso7 = "a" Entonces
													Escribir "* Curso Aprobado Felicidades!!!";
												FinSi
												Si curso7 = "r" Entonces
													Escribir "* Curso Reprobado intentalo de nuevo";
												FinSi
												Si curso7 = "" Entonces
													Escribir "* Curso en proceso";
												FinSi
												Escribir "****************************************";
											SiNo
												Escribir "****************************************";
												Escribir "*         Alumno NO existe             *";
												Escribir "****************************************";
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
				Escribir "******************************************";
				Escribir "*Deseas salir de Func Autoescuela? (s/n) *";
				Escribir "******************************************";
				Leer salir;
				Limpiar Pantalla;
			3:
				Limpiar Pantalla;
				Escribir "****************************************";
				Escribir "*         Calificar Curso             *";
				Escribir "****************************************";
				Escribir "*Documento de Identidad";
				Leer di;
				Limpiar Pantalla;
				Si di0 = di Entonces
					Escribir "****************************************";
					Escribir "*         Datos del alumno             *";
					Escribir "****************************************";
					Escribir "* Documento Nro: ",di0;
					Escribir "* Nombre: ",nomb0;
					Escribir "* Telefono: ",telf0;
					Escribir "* Calificar Aprobado ó Reprobado (a/r): ";
					Leer curso0;
					Escribir "****************************************";
					Escribir "*         Alumno Calificado!           *";
					Escribir "****************************************";
				SiNo
					Si di1 = di Entonces
						Escribir "****************************************";
						Escribir "*         Datos del alumno             *";
						Escribir "****************************************";
						Escribir "* Documento Nro: ",di1;
						Escribir "* Nombre: ",nomb1;
						Escribir "* Telefono: ",telf1;
						Escribir "* Calificar Aprobado ó Reprobado (a/r): ";
						Leer curso1;
						Escribir "****************************************";
						Escribir "*         Alumno Calificado!           *";
						Escribir "****************************************";
					SiNo
						Si di2 = di Entonces
							Escribir "****************************************";
							Escribir "*         Datos del alumno             *";
							Escribir "****************************************";
							Escribir "* Documento Nro: ",di2;
							Escribir "* Nombre: ",nomb2;
							Escribir "* Telefono: ",telf2;
							Escribir "* Calificar Aprobado ó Reprobado (a/r): ";
							Leer curso2;
							Escribir "****************************************";
							Escribir "*         Alumno Calificado!           *";
							Escribir "****************************************";
						SiNo
							Si di3 = di Entonces
								Escribir "****************************************";
								Escribir "*         Datos del alumno             *";
								Escribir "****************************************";
								Escribir "* Documento Nro: ",di3;
								Escribir "* Nombre: ",nomb3;
								Escribir "* Telefono: ",telf3;
								Escribir "* Calificar Aprobado ó Reprobado (a/r): ";
								Leer curso3;
								Escribir "****************************************";
								Escribir "*         Alumno Calificado!           *";
								Escribir "****************************************";
							SiNo
								Si di4 = di Entonces
									Escribir "****************************************";
									Escribir "*         Datos del alumno             *";
									Escribir "****************************************";
									Escribir "* Documento Nro: ",di4;
									Escribir "* Nombre: ",nomb4;
									Escribir "* Telefono: ",telf4;
									Escribir "* Calificar Aprobado ó Reprobado (a/r): ";
									Leer curso4;
									Escribir "****************************************";
									Escribir "*         Alumno Calificado!           *";
									Escribir "****************************************";
								SiNo
									Si di5 = di Entonces
										Escribir "****************************************";
										Escribir "*         Datos del alumno             *";
										Escribir "****************************************";
										Escribir "* Documento Nro: ",di5;
										Escribir "* Nombre: ",nomb5;
										Escribir "* Telefono: ",telf5;
										Escribir "* Calificar Aprobado ó Reprobado (a/r): ";
										Leer curso5;
										Escribir "****************************************";
										Escribir "*         Alumno Calificado!           *";
										Escribir "****************************************";
									SiNo
										Si di6 = di Entonces
											Escribir "****************************************";
											Escribir "*         Datos del alumno             *";
											Escribir "****************************************";
											Escribir "* Documento Nro: ",di6;
											Escribir "* Nombre: ",nomb6;
											Escribir "* Telefono: ",telf6;
											Escribir "* Calificar Aprobado ó Reprobado (a/r): ";
											Leer curso6;
											Escribir "****************************************";
											Escribir "*         Alumno Calificado!           *";
											Escribir "****************************************";
										SiNo
											Si di7 = di Entonces
												Escribir "****************************************";
												Escribir "*         Datos del alumno             *";
												Escribir "****************************************";
												Escribir "* Documento Nro: ",di7;
												Escribir "* Nombre: ",nomb7;
												Escribir "* Telefono: ",telf7;
												Escribir "* Calificar Aprobado ó Reprobado (a/r): ";
												Leer curso7;
												Escribir "****************************************";
												Escribir "*         Alumno Calificado!           *";
												Escribir "****************************************";
											SiNo
												Escribir "****************************************";
												Escribir "*         Alumno NO existe             *";
												Escribir "****************************************";
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
				Escribir "******************************************";
				Escribir "*Deseas salir de Func Autoescuela? (s/n) *";
				Escribir "******************************************";
				Leer salir;
				Limpiar Pantalla;
			4:
				Limpiar Pantalla;
				Escribir "******************************************";
				Escribir "*Deseas salir de Func Autoescuela? (s/n) *";
				Escribir "******************************************";
				Leer salir;
				Limpiar Pantalla;
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "****************************************";
				Escribir "*Ingrese una opcion valida (1,2,3 ó 4) *";
				Escribir "****************************************";
		FinSegun
	Hasta Que salir = "s"
FinSubProceso
//***********************************************************************************
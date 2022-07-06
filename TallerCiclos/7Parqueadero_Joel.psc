//El parqueadero "El guardián" presta sus servicios de parqueadero nocturno para los usuarios del barrio y requiere una aplicación que permita
//registrar los vehículos que se cuidan en estas instalaciones. Se sugiere que el parqueadero tenga los atributos del vehículo como son,
//placa y marca, y los datos del cliente como son nombre completo y número de teléfono.
//Para cada vehículo se debe permitir la opción de ingresar al parqueadero, retirar del parqueadero
//y consultar si un vehículo se encuentra en el parqueadero. Recuerde que el sistema debe terminar cuando el usuario así lo indique.
//Tenga en presente que el parqueadero solo puede almacenar máximo 5 vehículos.
Proceso Parqueadero
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
				Escribir "****************************************";
				Escribir "*  Deseas salir del sistema? (s/n)     *";
				Escribir "****************************************";
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
				Escribir "****************************************";
				Escribir "*  Deseas salir del sistema? (s/n)     *";
				Escribir "****************************************";
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

//La escuela automovil�stica "El Maestro" requiere una aplicaci�n que permita registrar a sus clientes en los cursos de ense�anza automovil�stica
//y establecer quienes lo han aprobado para continuar con el tr�mite de adquirir la licencia de conducci�n.
//Para cada usuario se debe permitir registrar su ingreso al curso, consultar usuarios que hayan presentado el curso y
//resultados de la prueba del curso (si fueron aprobados o no). Recuerde que el sistema debe terminar cuando el usuario as� lo indique.
//Tenga presente que la escuela tiene capacidad m�xima de gestionar 8 usuarios en su totalidad.
Proceso Autoescuela
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
		Escribir "*     Ingrese una opci�n (1,2,3 � 4)   *";
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
				Escribir "****************************************";
				Escribir "*  Deseas salir del sistema? (s/n)     *";
				Escribir "****************************************";
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
				Escribir "****************************************";
				Escribir "*  Deseas salir del sistema? (s/n)     *";
				Escribir "****************************************";
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
					Escribir "* Calificar Aprobado � Reprobado (a/r): ";
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
						Escribir "* Calificar Aprobado � Reprobado (a/r): ";
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
							Escribir "* Calificar Aprobado � Reprobado (a/r): ";
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
								Escribir "* Calificar Aprobado � Reprobado (a/r): ";
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
									Escribir "* Calificar Aprobado � Reprobado (a/r): ";
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
										Escribir "* Calificar Aprobado � Reprobado (a/r): ";
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
											Escribir "* Calificar Aprobado � Reprobado (a/r): ";
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
												Escribir "* Calificar Aprobado � Reprobado (a/r): ";
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
				Escribir "*Ingrese una opcion valida (1,2,3 � 4) *";
				Escribir "****************************************";
		FinSegun
	Hasta Que salir = "s"
FinProceso

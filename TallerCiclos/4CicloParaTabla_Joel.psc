//Se requiere un programa que pueda crear la tabla de multiplicar del número que el usuario indique por medio del ciclo Para;
//esta debe ser impresa del 1 al 10. 
Proceso CicloParaTabla
	// Declaramos las variables
	Definir i,nro Como Entero;
	//****************************************
	Escribir "***Tabla de Multiplicar***";
	Escribir "***Hola ingresa un numero***";
	Leer nro;
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
		Escribir i," x ",nro," = ",i*nro;
	FinPara
FinProceso

Proceso CicloParaFigura1
	// Declaramos las variables
	Definir i,j Como Entero;
	//****************************************
	Para i <- 0 Hasta 9 Con Paso 1 Hacer//El primer PARA incrementa el eje Y
		Para  j <- 0 Hasta (i+1-1) Con Paso 1 Hacer //El segundo PARA va imprimiento en el eje X
			Escribir Sin Saltar "*";
		FinPara
		Escribir "";//Retorno de carro
	FinPara
FinProceso

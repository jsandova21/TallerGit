Proceso CicloMientrasFigura2
	// Declaramos las variables
	Definir i,j,k Como Entero;
	//****************************************
	i <- 0;
	Mientras i < 10 Hacer
		j <- 0;
		k <- 10-i;
		Mientras j < 10 Hacer
			Si k > 1 Entonces
				Escribir Sin Saltar " ";
			SiNo
				Escribir Sin Saltar "*";
			FinSi
			j <- j+1;
			k <- k-1;
			si j = 10 Entonces
				Escribir "";
			FinSi
		FinMientras
		i <- i+1;
	FinMientras
	
	// Declaramos las variables
	//Definir i,j Como Entero;
	//****************************************
	//Para i <- 0 Hasta 9 Con Paso 1 Hacer//El primer PARA incrementa el eje Y
	//	Para  j <- 0 Hasta (i+1-1) Con Paso 1 Hacer //El segundo PARA va imprimiento en el eje X
	//		Escribir Sin Saltar "*";
	//	FinPara
	//	Escribir "";//Retorno de carro
	//FinPara	
FinProceso

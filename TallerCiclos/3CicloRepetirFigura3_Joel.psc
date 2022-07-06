Proceso CicloMientrasFigura2
	// Declaramos las variables
	Definir i,j,k Como Entero;
	//****************************************
	i <- 0;
	Repetir
		j <- 10;
		Repetir
			Escribir Sin Saltar " ";
			si j = i Entonces
				k <- 1;
				Repetir
					Si k=1 Entonces
						Escribir Sin Saltar "*";
					SiNo
						Escribir Sin Saltar "**";
					FinSi
					k <- k+1;
				Hasta Que k = j+2
			FinSi
 		j <- j-1;
		Hasta Que j = i-1
		Escribir "";
		i <- i+1;
	Hasta Que i = 11
	//****************************************
	i <- 0;
	Repetir
		j <- 9;
		Repetir
			Escribir Sin Saltar " ";
			si j = i Entonces
				k <- 1;
				Repetir
					Si i < 1 Entonces
						Escribir  "***";
						Escribir Sin Saltar "          ***";
					SiNo
						Si k = 1 Entonces
							Escribir Sin Saltar "***";
						SiNo
							Escribir Sin Saltar "**";
						FinSi
					FinSi
				k <- k+1;
				Hasta Que k = j+2
			FinSi
		j <- j-1;
		Hasta Que j = i-1
		Escribir "";
		i <- i+1;
	Hasta Que i = 3
FinProceso

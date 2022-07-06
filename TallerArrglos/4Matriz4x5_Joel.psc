//Dada la siguiente matriz bidimensional, el cual debe de quemar en el código
// 01 02 03 04 05
// 06 07 08 09 10
// 11 12 13 14 15
// 16 17 18 19 20
//Utilizando el conocimiento adquirido, a excepción de hacerlo de forma manual, imprima la siguiente matriz bidimensional.
// 01 02 03 04 05
// 10 09 08 07 06
// 11 12 13 14 15
// 20 19 18 17 16
Proceso Matriz4x5
	//Definimos variables
	Definir f,c,c2 Como Entero;//variables que van a manejar las filas (f) y columnas (c) de la matriz4_5
	Definir matriz4_5 Como Caracter;
	Dimension matriz4_5[4,5];
	//Creamos (quemamos) la matriz4_5
	matriz4_5[0,0] <- "01";matriz4_5[0,1] <- "02";matriz4_5[0,2] <- "03";matriz4_5[0,3] <- "04";matriz4_5[0,4] <- "05";
	matriz4_5[1,0] <- "06";matriz4_5[1,1] <- "07";matriz4_5[1,2] <- "08";matriz4_5[1,3] <- "09";matriz4_5[1,4] <- "10";
	matriz4_5[2,0] <- "11";matriz4_5[2,1] <- "12";matriz4_5[2,2] <- "13";matriz4_5[2,3] <- "14";matriz4_5[2,4] <- "15";
	matriz4_5[3,0] <- "16";matriz4_5[3,1] <- "17";matriz4_5[3,2] <- "18";matriz4_5[3,3] <- "19";matriz4_5[3,4] <- "20";
	//Recorremos e imprimimos nuestra matriz4_5
	Escribir "******************************************";
	Escribir "*         Matriz 4 x 5 ordenada          *";
	Escribir "******************************************";
	f <- 0;
	Mientras f < 4 Hacer
		c <- 0;
		Mientras c < 5 Hacer
			Escribir matriz4_5[f,c]," " Sin Saltar;
			c <- c+1;
		FinMientras
		Escribir "";
	f <- f+1;
	FinMientras
	//Recorremos e imprimimos nuestra matriz4_5
	Escribir "******************************************";
	Escribir "*  Matriz 4x5 filas impares invertidas   *";
	Escribir "******************************************";
	f <- 0;
	Mientras f < 4 Hacer
		c <- 0;
		c2 <- 4;
		Mientras c < 5 Hacer
			Si f%2 = 0  Entonces
				Escribir matriz4_5[f,c]," " Sin Saltar;
			FinSi
			Si f%2 <> 0  Entonces
				Escribir matriz4_5[f,c2]," " Sin Saltar;
			FinSi
			c <- c+1;
			c2 <- c2-1;
		FinMientras
		Escribir "";
		f <- f+1;
	FinMientras
FinProceso

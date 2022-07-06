Proceso Tabla_de_Multiplicar
	//Definimos variables
	Definir tabla,f,c Como Entero;
	Definir columnas,filas,salir Como Caracter;
	Dimension columnas[10];
	Dimension filas[10];
	Dimension tabla[10,10];
	//Llenamos el vector columnas
	columnas[0] <- "        |             * ";columnas[1] <- "  C  ";columnas[2] <- "  O  ";columnas[3] <- "  L  ";columnas[4] <- "  U  ";
	columnas[5] <- "  M  ";columnas[6] <- "  N  ";columnas[7] <- "  A  ";columnas[8] <- "  S  ";columnas[9] <- " *                       |";
	//Llenamos el vector filas
	filas[0] <- "*";filas[1] <- "*";filas[2] <- "F";filas[3] <- "I";filas[4] <- "L";
	filas[5] <- "A";filas[6] <- "S";filas[7] <- "*";filas[8] <- "*";filas[9] <- "*";
	Repetir
		//Imprimimos el vector columnas
		c <- 0;
		Escribir "        ----------------------------------------------------------------------------------";
		Mientras c < 10 Hacer
			Si c < 9 Entonces
				Escribir Sin Saltar columnas[c];
			SiNo
				Escribir columnas[c];
			FinSi
			c <- c+1;
		FinMientras
		Escribir "        ----------------------------------------------------------------------------------";
		//Imprimimos la posicion de cada columna
		c <- 0;
		Mientras c < 10 Hacer
			Si c = 0 Entonces
				Escribir Sin Saltar "        |   ",c," ";
			SiNo
				Escribir Sin Saltar "  |   ",c," ";
			FinSi
			Si c = 9 Entonces
				Escribir Sin Saltar "   |";
			FinSi
			c <- c+1;
		FinMientras
		Escribir "";
		//Aca imprimimos el vector filas y la tabla completa
		Escribir "------------------------------------------------------------------------------------------";
		Para f <- 0 Hasta 9 Con Paso 1 Hacer
			Escribir Sin Saltar "| ",filas[f]," | ",f," |";
			Para c <- 0 Hasta 9 Con Paso 1 Hacer
				Si f = 9 Entonces
					Escribir Sin Saltar " ",c+1," x ", f+1,"|";
				SiNo
					Escribir Sin Saltar " ",c+1," x ", f+1," |";
				FinSi
				Si c=9 Y f<9 Entonces
					Escribir "";
					Escribir Sin Saltar"    --------------------------------------------------------------------------------------";
				FinSi
			FinPara
			Escribir "";
		FinPara
		Escribir "------------------------------------------------------------------------------------------";
		//Con este ciclo llenamos la matriz "tabla" con los resultados de las multipliacaciones segun la fila y columna respecctiva
		f <- 0;
		Mientras f < 10 Hacer
			c <- 0;
			Mientras c < 10 Hacer
				tabla[f,c] <- ((f+1)*(c+1));//Según la posición de fila y columna realizamos la multiplicación respectiva
				c <- c+1;
			FinMientras;
			f <- f+1;
		FinMientras
		//Aca le solicitamos al usuario la fila y columna que desee multiplicar
		Escribir "****************************************";
		Escribir "* Ingrese la Fila y Columna que desee  *";
		Escribir "****************************************";
		Escribir Sin Saltar "* Fila=";
		Leer f;
		Escribir "* La fila ",f," seria el numero=",f+1;
		Escribir Sin Saltar  "* Columna=";
		Leer c;
		Escribir "* Y la columna ",c," seria el numero=",c+1;
		Escribir "****************************************";
		Escribir "* El resultado de ",f+1,"x",c+1," es: ",tabla[f,c];//Y mostramos el resultado segun la fila y columna seleccionada
		Escribir "****************************************";
		Escribir "****************************************";
		Escribir "*  Deseas salir del sistema? (s/n)     *";
		Escribir "****************************************";
		Leer salir;
	Hasta Que salir = "s" //repetimos el ciclo haste que el usuario lo requiera
FinProceso


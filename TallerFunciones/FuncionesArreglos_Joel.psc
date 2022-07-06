//***********************************************************************************
Proceso FuncionesArreglos
	// ********************Declaramos las variables**********************************
	Definir salir Como Caracter;
	Definir func,vector,i,fila,columna Como Entero;
	Dimension vector[5];
	//****************************************
	salir <- "n";
	Repetir//Usamos el ciclo Repetir hasta para mostrar el menu de opciones hasque el usiario desee salir del sistema
		Escribir "*Que funcion desea probar";
		Escribir "1=>Vector5Posc";
		Escribir "2=>Vector20Posc";
		Escribir "3=>NrosPrimos";
		Escribir "4=>Matriz4x5";
		Escribir "5=>Tabla_de_Multiplicar";
		Escribir "6=>Salir";
		Leer func;
		Limpiar Pantalla;
		Segun func Hacer
			1:
				Escribir "***************************************************************************************";
				Escribir "//*******************************Funcion Vector5Posc***********************************";
				i <- 0;
				Escribir "***************************************************************";
				Escribir "*Hola vamos a llenar un vector de 5 posiciones con numeros ;-)*";
				Escribir "***************************************************************";
				Mientras i < 5 Hacer//Con el ciclo mientras recorremos el vector y le solicitamos al usuario que ingrese los datos
					Escribir "Ingresa posc ",i+1;
					Leer vector[i]; 
					i <- i+1;
				FinMientras
				MostrarVector(vector);
				Escribir "***************************************************************************************";
			2:
				Escribir "***************************************************************************************";
				Escribir "//*******************************Funcion Vector20Posc**********************************";
				Vector20Posc();
				Escribir "***************************************************************************************";
			3:
				Escribir "***************************************************************************************";
				Escribir "//****************************Funcion NrosPrimos**************************************";
				NrosPrimos();
				Escribir "***************************************************************************************";
			4:
				Escribir "***************************************************************************************";
				Escribir "//****************************Funcion Matriz4x5****************************************";
				Matriz4x5();
				Escribir "***************************************************************************************";
			5:
				Escribir "***************************************************************************************";
				Escribir "//********************Funcion Tabla_de_Multiplicar*************************************";
				//Aca le solicitamos al usuario la fila y columna que desee multiplicar
				Escribir "****************************************";
				Escribir "* Ingrese la Fila y Columna que desee  *";
				Escribir "****************************************";
				Escribir Sin Saltar "* Fila=";
				Leer fila;
//				Escribir "* La fila ",fila," seria el numero=",fila+1;
				Escribir Sin Saltar  "* Columna=";
				Leer columna;
//				Escribir "* Y la columna ",columna," seria el numero=",columna+1;
				Tabla_de_Multiplicar(fila,columna);
				Escribir "***************************************************************************************";
			6:
				Limpiar Pantalla;
				Escribir "****************************************";
				Escribir "*  Deseas salir del sistema? (s/n)     *";
				Escribir "****************************************";
				Leer salir;
				Limpiar Pantalla;
			De Otro Modo:
				Escribir "*Operacion invalida";
		FinSegun
	//Limpiar Pantalla;
	Hasta Que salir = "s"
FinProceso
//************************************************************************************
//*********************************Funcion Vector5Posc*********************************
SubProceso MostrarVector (vector)
	//Definimos variables
	Definir i Como Entero;
	Definir salir Como Caracter;
	//Valores iniciales
	salir <- "n";
	Escribir "***************************************************************";
	Escribir "*           Listo este es el vector que creamos               *";
	Escribir "***************************************************************";
	i <- 0;
	Mientras i <5 Hacer//Y en este ciclo volvemos a recorres el vector pero ahora mostrando la informacion ingresada por el usuario
		Escribir "[",i,"] = ",vector[i];
		i <- i+1;
	FinMientras
	Escribir "****************************************";
	Escribir "*  Deseas salir del sistema? (s/n)     *";
	Escribir "****************************************";
	Leer salir;
	Limpiar Pantalla;
FinSubProceso
//************************************************************************************
//*********************************Funcion Vector20Posc*********************************
SubProceso Vector20Posc ()
	Definir vector2,nro,i,j Como Entero;
	Dimension vector2[20];
	Definir salir Como Caracter;
	//Valores iniciales
	salir <- "n";
	i <- 0;
	Escribir "************************************************";
	Escribir "*Hola vamos a llenar un vector de 20 posiciones*";
	Escribir "*con numeros aleatorios del 1 al 100 ;-)       *";
	Escribir "************************************************";
	Mientras i < 20 Hacer//con el ciclo mientras recorremos las 2o posiciones del arreglo
		nro <- azar(100)+1;//generamos los numeros aleatorios con la Funcion azar 
		vector2[i]<- nro;//asignamos dicho numero en la posicion i del arreglo
		Escribir "Numero posicion ",i+1," => ",vector2[i];//Y mostramos dicha informacion
		i <- i+1;
	FinMientras
	Escribir "************************************************";
	Escribir "*    Listo los numeros pares o impares son     *";
	Escribir "************************************************";
	j <- 0;
	Escribir Sin Saltar "Numeros pares:";
	Para i <- 0 Hasta 19 Con Paso 1 Hacer//para mostrar los numeros pares e impares del arreglo anterios usamos un ciclo para
		Si vector2[i]%2 = 0 Y j = 0 Entonces//si la división entre 2 del número es exacta es par
			Escribir Sin Saltar vector2[i];
		FinSi
		Si vector2[i]%2 = 0 Y j > 0 Entonces//usamos la variable j para evitar agregar una coma de mas al mostra el arreglo par
			Escribir Sin Saltar ",",vector2[i];
		FinSi
		Si vector2[i]%2 = 0 Entonces
			j <- j+1;
		FinSi
	FinPara
	Escribir "";
	j <- 0;
	Escribir Sin Saltar "Numeros impares:";
	Para i <- 0 Hasta 19 Con Paso 1 Hacer
		Si vector2[i]%2 <> 0 Y j = 0 Entonces
			Escribir Sin Saltar vector2[i];
		FinSi
		Si vector2[i]%2 <> 0 Y j > 0 Entonces
			Escribir Sin Saltar ",",vector2[i];
		FinSi
		Si vector2[i]%2 <> 0 Entonces
			j <- j+1;
		FinSi
	FinPara
	Escribir "";
	Escribir "****************************************";
	Escribir "*  Deseas salir del sistema? (s/n)     *";
	Escribir "****************************************";
	Leer salir;
	Limpiar Pantalla;
FinSubProceso
//************************************************************************************
//*********************************Funcion NrosPrimos*********************************
SubProceso NrosPrimos ()
	Definir vector,i,j,nro,div,par Como Entero;
	Dimension vector[20];
	Definir salir Como Caracter;
	//Valores iniciales
	salir <- "n";
	i <- 0;
	Escribir "************************************************";
	Escribir "*Hola vamos a llenar un vector de 20 posiciones*";
	Escribir "*con numeros aleatorios del 1 al 1000 ;-)       *";
	Escribir "************************************************";
	Mientras i < 20 Hacer//Usamos el ciclo mientras para llenas el vector con los numero del 1 al 1000 de forma aleatoria
		nro <- azar(1000)+1;
		vector[i]<- nro;
		Escribir "Numero posicion ",i+1," => ",vector[i];
		i <- i+1;
	FinMientras
	Escribir "************************************************";
	Escribir "*    Listo los numeros primos son              *";
	Escribir "************************************************";
	j <- 0;
	Para i <- 1 Hasta 19 Con Paso 1 Hacer//Usamos el ciclo para para recorrer el vector y buscar los numeros primos 
		par <- 0;//contador que me va a indicar si el numero es primo
		div <- 1;//divisor
		Mientras div <= vector[i] Hacer//con este ciclo recorro los posibles divisores
			Si nro mod div = 0 Entonces//aca veo si la división es exacta
				par <- par+1;//incremento el contador
			FinSi
			div <- div+1;//incremento el ciclo
		FinMientras
		si par =2 Y j = 0 Entonces//si el contador par es igual a 2 quiere decir que el numero es primo
			Escribir Sin Saltar vector[i];
		FinSi
		si par =2 Y j > 0 Entonces//
			Escribir Sin Saltar ",",vector[i];//aca coloco las comas entre los nuemero evitando colocar una comade mas al final
		FinSi
		si par =2 Entonces
			j <- j+1;
		FinSi
	FinPara
	Escribir "";
	Escribir "****************************************";
	Escribir "*  Deseas salir del sistema? (s/n)     *";
	Escribir "****************************************";
	Leer salir;
	Limpiar Pantalla;
FinSubProceso
//************************************************************************************
//*********************************Funcion Matriz4x5**********************************
SubProceso Matriz4x5 ()
	//Definimos variables
	Definir f,c,c2 Como Entero;//variables que van a manejar las filas (f) y columnas (c) de la matriz4_5
	Definir matriz4_5,salir Como Caracter;
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
	salir <- "n";
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
	Escribir "****************************************";
	Escribir "*  Deseas salir del sistema? (s/n)     *";
	Escribir "****************************************";
	Leer salir;
	Limpiar Pantalla;
FinSubProceso
//************************************************************************************
//**************************Funcion Tabla_de_Multiplicar******************************
SubProceso Tabla_de_Multiplicar (fila,columna)
	//Definimos variables
	Definir tabla,resultado,c,f Como Entero;
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
	salir <- "n";
//	Repetir
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
		Escribir "****************************************";
		Escribir "* El resultado de ",fila+1,"x",columna+1," es: ",tabla[fila,columna];//Y mostramos el resultado segun la fila y columna seleccionada
		Escribir "****************************************";
		Escribir "****************************************";
		Escribir "*  Deseas salir del sistema? (s/n)     *";
		Escribir "****************************************";
		Leer salir;
		Limpiar Pantalla;
FinSubProceso
//***********************************************************************************
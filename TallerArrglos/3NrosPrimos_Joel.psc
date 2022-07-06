//Imprimir los números primos del 1 al 1000, el resultado debe ser buscado de forma matemática.
//Tenemos que los numeros primos son aquellos que tienen dos divisores el numero 1 y el mismo numero
Proceso NrosPrimos
	Definir vector,i,j,nro,div,par Como Entero;
	Dimension vector[20];
	Escribir "************************************************";
	Escribir "*Hola vamos a llenar un vector de 20 posiciones*";
	Escribir "*con numeros aleatorios del 1 al 1000 ;-)       *";
	Escribir "************************************************";
	i <- 0;
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
FinProceso
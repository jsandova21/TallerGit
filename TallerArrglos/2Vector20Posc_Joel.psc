//Crear un arreglo de números enteros de 20 posiciones, el cual, debe ser llenado con números aleatorios entre 1 y 100;
//después de haber llenado dicho arreglo, se debe volver a recorrer utilizando un ciclo diferente al que se usó para llenarse
//e imprimir los números pares e impares.
Proceso Vector20Posc
	Definir vector,nro,i,j Como Entero;
	Dimension vector[20];
	Escribir "************************************************";
	Escribir "*Hola vamos a llenar un vector de 20 posiciones*";
	Escribir "*con numeros aleatorios del 1 al 100 ;-)       *";
	Escribir "************************************************";
	i <- 0;
	Mientras i < 20 Hacer//con el ciclo mientras recorremos las 2o posiciones del arreglo
		nro <- azar(100)+1;//generamos los numeros aleatorios con la Funcion azar 
		vector[i]<- nro;//asignamos dicho numero en la posicion i del arreglo
		Escribir "Numero posicion ",i+1," => ",vector[i];//Y mostramos dicha informacion
		i <- i+1;
	FinMientras
	Escribir "************************************************";
	Escribir "*    Listo los numeros pares o impares son     *";
	Escribir "************************************************";
	j <- 0;
	Escribir Sin Saltar "Numeros pares:";
	Para i <- 0 Hasta 19 Con Paso 1 Hacer//para mostrar los numeros pares e impares del arreglo anterios usamos un ciclo para
		Si vector[i]%2 = 0 Y j = 0 Entonces//si la división entre 2 del número es exacta es par
			Escribir Sin Saltar vector[i];
		FinSi
		Si vector[i]%2 = 0 Y j > 0 Entonces//usamos la variable j para evitar agregar una coma de mas al mostra el arreglo par
			Escribir Sin Saltar ",",vector[i];
		FinSi
		Si vector[i]%2 = 0 Entonces
			j <- j+1;
		FinSi
	FinPara
	Escribir "";
	j <- 0;
	Escribir Sin Saltar "Numeros impares:";
	Para i <- 0 Hasta 19 Con Paso 1 Hacer
		Si vector[i]%2 <> 0 Y j = 0 Entonces
			Escribir Sin Saltar vector[i];
		FinSi
		Si vector[i]%2 <> 0 Y j > 0 Entonces
			Escribir Sin Saltar ",",vector[i];
		FinSi
		Si vector[i]%2 <> 0 Entonces
			j <- j+1;
		FinSi
	FinPara
	Escribir "";
FinProceso

//Crear un vector de tipo Entero con 5 posiciones, llenarlo con información solicitada al usuario. Después de recoger toda la información,
//se requiere imprimir el índice de cada posición en el arreglo con su valor
Proceso Vector5Posc
	//Definimos variables
	Definir vector,i Como Entero;
	Dimension vector[5];
	//Valores iniciales
	i <- 0;
	Escribir "***************************************************************";
	Escribir "*Hola vamos a llenar un vector de 5 posiciones con numeros ;-)*";
	Escribir "***************************************************************";
	Mientras i < 5 Hacer//Con el ciclo mientras recorremos el vector y le solicitamos al usuario que ingrese los datos
		Escribir "Ingresa posc ",i+1;
		Leer vector[i]; 
	i <- i+1;
	FinMientras
	Escribir "***************************************************************";
	Escribir "*           Listo este es el vector que creamos               *";
	Escribir "***************************************************************";
	i <- 0;
	Mientras i <5 Hacer//Y en este ciclo volvemos a recorres el vector pero ahora mostrando la informacion ingresada por el usuario
		Escribir "[",i,"] = ",vector[i];
		i <- i+1;
	FinMientras
FinProceso

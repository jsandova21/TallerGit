//El taller de motos "El Maquinista" recibe motocicletas de alto cilindraje para realizar las respectivas revisiones y requiere una aplicación 
//que le permita registrar los servicios generados a sus clientes. Para cada motocicleta se debe tener registro del ingreso al taller y 
//las observaciones por parte del cliente. También debe existir registro de salida del taller con las novedades y otra de arreglos hechos 
//por el mecánico en caso de que se requiera inventariar cambios repuestos en la motocicleta al entregarla.
Proceso TallerMotos
	// Declaramos las variables
	Definir registro Como Entero;
	Definir servicio Como Entero;
	Definir fecha Como Caracter;
	Definir hora Como Caracter;
	Definir placa Como Caracter;
	Definir observacion Como Caracter;
	Definir novedad Como Caracter;
	Definir repuesto Como Caracter;
	// Solicitamos al usuario que elija una opccion
	Escribir "*Hola Bienvenido a El Maquinista";
	Escribir "*Que deseas registrar:";
	Escribir "1=>Ingreso de un vehiculo";
	Escribir "2=>Salida de un vehiculo";
	Leer registro;
	Si registro=1 Entonces
		Escribir "*Selecciona un servicio (Elige una opcion)";
		Escribir "1=>Cambio de Aceite";
		Escribir "2=>Lavado";
		Escribir "3=>Mecanica General";
		Leer servicio;
		Escribir "*Ingrese Fecha, Hora y placa del vehiculo";
		Escribir "*Fecha:";
		Leer fecha;
		Escribir "*Hora:";
		Leer hora;
		Escribir "*Placa:";
		Leer placa;
		Escribir "*Observacion del cliente:";
		Leer observacion;
		Escribir "*El vehiculo placas ",placa," fue ingresado con fecha ",fecha," y hora ",hora;
		Segun servicio Hacer
			1:
				Escribir "*El vehiculo placas ",placa," requiere cambio de aceite";
				Si observacion <> "" Entonces
					Escribir "Y el cliente solicito ",observacion;
				FinSi
			2:
				Escribir "*El vehiculo placas ",placa," requiere lavado";
				Si observacion <> "" Entonces
					Escribir "Y el cliente solicito ",observacion;
				FinSi
			3:
				Escribir "*El vehiculo placas ",placa," requiere mecanica general";
				Si observacion <> "" Entonces
					Escribir "Y el cliente solicito ",observacion;
				FinSi
			De Otro Modo:
				Escribir "*Ingrese una opcion valida";
		FinSegun
	SiNo
		Escribir "*Ingrese Fecha, Hora y placa del vehiculo";
		Escribir "*Fecha:";
		Leer fecha;
		Escribir "*Hora:";
		Leer hora;
		Escribir "*Placa:";
		Leer placa;
		Escribir "*Se presento alguna novedad?";
		Leer novedad;
		Escribir "*Se requirio repuesto nuevo?";
		Leer repuesto;
		Escribir "*El vehiculo placas ",placa," salio del taller con fecha ",fecha," y hora ",hora;
		Si novedad <> "" Entonces
			Escribir "Notificar al cliente ",novedad;
		FinSi
		Si repuesto <> "" Entonces
			Escribir "Y se cambio el repuesto: ",repuesto;
		FinSi
	FinSi
FinProceso

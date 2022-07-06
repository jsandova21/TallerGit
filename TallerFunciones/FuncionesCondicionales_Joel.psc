//***********************************************************************************
Proceso FuncionesCondidcionales
	// ********************Declaramos las variables**********************************
	Definir nombre,apellido1,apellido2,mensajes,usuario,clave,salir Como Caracter;
	Definir edad,opcion,registro,peso,func Como Entero;
	Definir estatura Como Real;
	salir <- "n";
	//****************************************
	Repetir//Usamos el ciclo Repetir hasta para mostrar el menu de opciones hasque el usiario desee salir del sistema
		Escribir "*Que funcion desea probar";
		Escribir "1=>Mayor de Edad";
		Escribir "2=>Menor de edad";
		Escribir "3=>Fiesta";
		Escribir "4=>Video Tienda";
		Escribir "5=>Drogueria";
		Escribir "6=>Taller";
		Escribir "7=>IMC";
		Escribir "8=>Pastelero";
		Escribir "9=>Geometria";
		Escribir "10=>Banco";
		Leer func;
		Segun func Hacer
			1:
				Escribir "***************************************************************************************";
				Escribir "//****************************Funcion Mayor_Edad****************************************";
				Escribir "*******Hola, Cual es tu edad?*********";
				Leer edad;
				mensajes <- MayorEdad(edad);
				Escribir mensajes;
				Escribir "***************************************************************************************";
			2:
				Escribir "***************************************************************************************";
				Escribir "//********************************Funcion MenorEdad***********************************";
				Leer edad;
				mensajes <- MenorEdad(edad);
				Escribir mensajes;
				Escribir "***************************************************************************************";
			3:
				Escribir "***************************************************************************************";
				Escribir "//****************************Funcion Fiesta*******************************************";
				Escribir "*****************************Hola, Cual es tu nombre?**********************************";
				Leer nombre;
				Escribir "*****************************Cual es tu Primer Apellido?*******************************";
				Leer apellido1;
				Escribir "*****************************Cual es tu Segundo Apellido?******************************";
				Leer apellido2;
				Escribir "*****************************Y tu edad, por favor**************************************";
				Leer edad;
				Fiesta(nombre,apellido1,apellido2,edad);
				Escribir "***************************************************************************************";
			4:
				Escribir "***************************************************************************************";
				Escribir "//*****************************Funcion VideoTienda*************************************";
				Escribir "*Hola Bienvenido a tu Video Porevenir!!!";
				Escribir "*Ingrese nombre de usuario";
				Leer usuario;
				Escribir "*Que deceas hacer (Elige una opcion)";
				Escribir "1=>Alquilar Pelicula";
				Escribir "2=>Consultar Peliculas";
				Escribir "3=>Recibir Pelicula";
				Leer opcion;
				VideoTienda(usuario,opcion);
				Escribir "***************************************************************************************";
			5:
				Escribir "***************************************************************************************";
				Escribir "//***************************Funcion Drogueria*****************************************";
				// Solicitamos al usuario que elija una opccion
				Escribir "*Hola Bienvenido a Drogueria Mi Salud";
				Escribir "*Que deceas hacer (Elige una opcion)";
				Escribir "1=>Comprar";
				Escribir "2=>Consultar";
				Escribir "3=>Devolver";
				Leer opcion;
				Drogueria(opcion);
			6:
				Escribir "***************************************************************************************";
				Escribir "//*****************************Funcion Taller******************************************";
				// Solicitamos al usuario que elija una opccion
				Escribir "*Hola Bienvenido a El Maquinista";
				Escribir "*Que deseas registrar:";
				Escribir "1=>Ingreso de un vehiculo";
				Escribir "2=>Salida de un vehiculo";
				Leer registro;
				Taller(registro);
				Escribir "***************************************************************************************";
			7:
				Escribir "***************************************************************************************";
				Escribir "//***************************Funcion IMC***********************************************";
				Escribir "**Hola Bienvenido(a) al programa de calculo de IMC (Indice de Masa Corporal)***********";
				Escribir "********************de La Secretaría de Salud Municipal********************************";
				Escribir "*Por favor ingrese la siguiente informacion";
				Escribir "*Nombre";
				Leer nombre;
				Escribir "*Aprellido";
				Leer apellido1;
				Escribir "*Peso en Kgrs";
				Leer peso;
				Escribir "*Estatura en metros";
				Leer estatura;
				IMC(nombre,apellido1,peso,estatura);
				Escribir "***************************************************************************************";
			8:
				Escribir "***************************************************************************************";
				Escribir "//*************************Funcion Pastelero*******************************************";
				// Mensaje de bienvenida
				Escribir "**Hola Bienvenido(a) la Pasteleria Don Carlos**";
				Escribir "*Elige una opcion";
				Escribir "1=>Registrar pedido";
				Escribir "2=>Inventario";
				Escribir "3=>Ventas Diarias";
				Leer opcion;
				Pastelero(opcion);
				Escribir "//************************************************************";
			9:
				Escribir "***************************************************************************************";
				Escribir "//*************************Funcion Geometria*******************************************";
				// Mensaje de bienvenida
				Escribir "**Hola Bienvenido(a) a la calculadora de areas";
				Escribir "*Elige una figura";
				Escribir "1=>Rectángulo";
				Escribir "2=>Triangulo";
				Escribir "3=>Trapecio";
				Leer opcion;
				Geometria(opcion);
				Escribir "***************************************************************************************";
			10:
				Escribir "//*********************************Funcion Banco***************************************";
				// Mensaje de bienvenida
				Escribir "**Hola Bienvenido(a) a su Banco Fiel";
				Escribir "**Ingrese su clave de cuatro digitos";
				Leer clave;
				Banco(clave);
				Escribir "***************************************************************************************";
			De Otro Modo:
				Escribir "*Operacion invalida";
		FinSegun
		Escribir "***************************************************************************************";
		Escribir "*             Deseas salir del sistema? (s/n)                                         *";
		Escribir "***************************************************************************************";
		Leer salir;
		Limpiar Pantalla;
	Hasta Que salir = "s"
FinProceso
//***********************************************************************************
//*********************************Funcion Mayor_Edad*********************************
SubProceso mensajes <- MayorEdad ( edad )
	Definir mensajes Como Caracter;
	Si edad > 18 Entonces
		mensajes <- "*******Usted es mayor de edad.*********";
	FinSi
FinSubProceso
//*********************************Funcion Menor_Edad*********************************
SubProceso mensajes <- MenorEdad ( edad )
	Definir mensajes Como Caracter;
	Si edad < 18 Entonces
		mensajes <-  "*******Usted aún es un niño(a).*********";
	FinSi
FinSubProceso
//*********************************Funcion Menor_Edad*********************************
SubProceso Fiesta (nombre,apellido1,apellido2,edad)
	Si edad > 18 Entonces
		Escribir "Bienvenido ", nombre," "," ",apellido1," ",apellido2," usted es mayor de edad por lo tanto puede entrar a la fiesta";
	SiNo
		Escribir "Hola ", nombre," "," ",apellido1," ",apellido2," usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.";
	FinSi
FinSubProceso
//*********************************Funcion VideoTienda*********************************
SubProceso VideoTienda (usuario,opcion)
	Definir cod_peli,edo_peli Como Caracter;
	Definir estado Como Entero;
	Segun opcion Hacer
		1:
			Escribir "*Ingrese Codigo de la pelicula";
			Leer cod_peli;
			Escribir "*Gracias por su compra ;-)";
		2:
			Escribir "*************Listado de Peliculas**********************************";
			Escribir "*Morbius (Codigo 001)";
			Escribir "*Muerte en el Nilo (Codigo 002)";
			Escribir "*Animales fantásticos: Los secretos de Dumbledore (Codigo 003)";
			Escribir "*Scream (Codigo 004)";
			Escribir "*Moonfall (Codigo 005)";
			Escribir "*Ojos de fuego (Codigo 006)";
			Escribir "*Agentes 355 (Codigo 007)";
			Escribir "*Casate conmigo (Codigo 008)";
			Escribir "*Jurassic World: Dominion (Codigo 009)";
			Escribir "*El método Williams (Codigo 010)";
			Escribir "*******************************************************************";
		3:
			Escribir "*Ingrese Codigo de la pelicula";
			Leer cod_peli;
			Escribir "En que estado recibio la pelicula? (Elija una opcion)";
			Escribir "1=>En buen estado";
			Escribir "2=>Con Detalles o en mal estado";
			Leer estado;
			Segun estado Hacer
				1:
					Escribir "*Puede proceder a recibir la pelicula";
					Escribir "*Gracias por su compra vuelva pronto ;-)"; 
				2:
					Escribir "*Por favor especifique ";
					Leer edo_peli;
					Escribir "*La novedad (",edo_peli,") fue registrada";
					Escribir "*Sugerir u orientar al usuario ",usuario," sobre el mejor trato de las pelicilas";
				De Otro Modo:
					Escribir "*Ingrese una opcion valida";
			FinSegun
		De Otro Modo:
			Escribir "*Ingrese una opcion valida";
	FinSegun
FinSubProceso
//*********************************Funcion Drogueria*********************************
SubProceso Drogueria (opcion)
	// Declaramos las variables
	Definir dproducto Como Caracter;
	Definir nproducto,carac_prod Como Entero;
	Segun opcion Hacer
		1:
			Escribir "*Elija un producto ";
			Escribir "1=>Antialergicos";
			Escribir "2=>Antigripales";
			Escribir "3=>Antibioticos";
			Leer nproducto;
			Segun nproducto Hacer
				1:					
					Escribir "*Lo quiere para Adultos o pediatrico (Elige una opcion)";
					Escribir "1=>Adultos";
					Escribir "2=>Pediatrico";
					Leer carac_prod;
					Si carac_prod = 1 Entonces
						Escribir "El antialergico para adulto cuesta 1000 pesos";
					SiNo
						Escribir "El antialergico pediatrico cuesta 2000 pesos";
					FinSi
				2:					
					Escribir "*Lo quiere para Adultos o pediatrico (Elige una opcion)";
					Escribir "1=>Adultos";
					Escribir "2=>Pediatrico";
					Leer carac_prod;
					Si carac_prod = 1 Entonces
						Escribir "El antigripal para adulto cuesta 1500 pesos";
					SiNo
						Escribir "El antigripal pediatrico cuesta 2500 pesos";
					FinSi
				3:					
					Escribir "*Lo quiere para Adultos o pediatrico (Elige una opcion)";
					Escribir "1=>Adultos";
					Escribir "2=>Pediatrico";
					Leer carac_prod;
					Si carac_prod = 1 Entonces
						Escribir "El Antibiotico para adulto cuesta 3000 pesos";
					SiNo
						Escribir "El Antibiotico pediatrico cuesta 3500 pesos";
					FinSi
				De Otro Modo:
					Escribir "*Ingrese una opcion valida";
			FinSegun
			Escribir "*Gracias por su compra ;-)";
		2:
			Escribir "*************Listado de Productos**********************************";
			Escribir "*Antialergico Adulto 1000 pesos";
			Escribir "*Antialergico Pediatrico 2000 pesos";
			Escribir "*Antigripal Adulto 1500 pesos";
			Escribir "*Antigripal Pediatrico 2500 pesos";
			Escribir "*Antibiotico Adulto 3000 pesos";
			Escribir "*Antibiotico Pediatrico 3500 pesos";
			Escribir "*******************************************************************";
		3:
			Escribir "*Ingrese Producto a devolver";
			Leer dproducto;
			Escribir "*El producto (",dproducto,") fue reingresado exitosamente";
			Escribir "*Gracia por preferir Drogueria Mi Salud";
			Escribir "*Vuelva pronto :-)";
		De Otro Modo:
			Escribir "*Ingrese una opcion valida";
	FinSegun
FinSubProceso
//*********************************Funcion Taller************************************
SubProceso Taller (registro)
	// Declaramos las variables
	Definir servicio Como Entero;
	Definir fecha,hora,placa,observacion,novedad,repuesto Como Caracter;
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
FinSubProceso
//*********************************Funcion IMC************************************
SubProceso IMC (nombre,apellido1,peso,estatura)
	Definir indice Como Real;
	//calculamos el IMC
	indice <- peso/(estatura*estatura);
	
	Si indice<18.5 Entonces
		Escribir "*Hola ",nombre," ",apellido1," tu IMC es ",indice;
		Escribir "*Segun la tabla te encuentras en Bajo Peso";
	FinSi
	Si indice>18.5 Y indice<25 Entonces
		Escribir "*Hola ",nombre," ",apellido1," tu IMC es ",indice;
		Escribir "*Segun la tabla te encuentras en Peso Normal";
	FinSi
	Si indice>25 Y indice<30 Entonces
		Escribir "*Hola ",nombre," ",apellido1," tu IMC es ",indice;
		Escribir "*Segun la tabla tienes Sobrepeso";
	FinSi
	Si indice>30 Entonces
		Escribir "*Hola ",nombre," ",apellido1," tu IMC es ",indice;
		Escribir "*Segun la tabla tienes Obesidad";
	FinSi
FinSubProceso
//*********************************Funcion Pastelero************************************
SubProceso Pastelero (opcion)
	// Declaramos las variables
	Definir pedido Como Entero;
	Definir cliente Como Caracter;
	Definir sabor Como Caracter;
	Definir decorado Como Caracter;
	Definir porcion Como Entero;
	Definir disponible Como Entero;
	Definir inventario Como Entero;
	Definir inventario1 Como Entero;
	Definir vendido Como Entero;
	inventario<-100;
	Segun opcion Hacer
		1:
			Escribir "**Cliente:";
			Leer cliente;
			Escribir "**Numero de Pedido:";
			Leer pedido;
			Escribir "**Sabor del Pastel:";
			Leer sabor;
			Escribir "**Para cuantas personas";
			Leer porcion;
			Escribir "**Decorado";
			Leer decorado;
			Escribir "**Hola Don ",cliente," su pastel sabor a ",sabor," de ",porcion," porciones y decorado ",decorado;
			Escribir "**Estara listo en 24 horas Gracias por su compra :-)";
		2:
			Escribir "**********Registro de Inventario***********";
			Escribir "**Sabor del Pastel:";
			Leer sabor;
			Escribir "**Cantidad de porciones";
			Leer porcion;
			Escribir "**Decorado";
			Leer decorado;
			Escribir "**Cantidad de pasteles";
			Leer inventario1;
			Escribir "**Se han registrado ",inventario1," pasteles sabor a ",sabor," de ",porcion," porciones y decorado ",decorado;
			inventario<-(inventario+inventario1);
			Escribir "**Hay ",inventario," pasteles en inventario";
		3:
			Escribir "**********Ventas***********";
			Escribir "**Sabor del Pastel:";
			Leer sabor;
			Escribir "**Para cuantas personas";
			Leer porcion;
			Escribir "**Decorado";
			Leer decorado;
			Escribir "**Cantidad";
			Leer vendido;
			disponible<-(inventario-vendido);
			Escribir "**Venta registrada";
			Escribir "**Restan ",disponible," Pasteles sabor a ",sabor," de ",porcion," porciones y decorado ",decorado;
			
		De Otro Modo:
			Escribir "*Ingrese una opcion valida";
	FinSegun
FinSubProceso
//*********************************Funcion Geometria************************************
SubProceso Geometria (figura)
	// Declaramos las variables
	Definir base,base2,altura,area Como Real;
	Segun figura Hacer
		1:
			Escribir "Ingrese la base del rectangulo";
			Leer base;
			Escribir "Ingrese la altura del rectangulo";
			Leer altura;
			area <- (base*altura);
			Escribir "El area del rectangulo de base= ",base," y altura= ",altura," es ",area," unidades cuadradas";
		2:
			Escribir "Ingrese la base del triangulo";
			Leer base;
			Escribir "Ingrese la altura del triangulo";
			Leer altura;
			area <- (base*altura)/2;
			Escribir "El area del triangulo de base= ",base," y altura= ",altura," es de: ",area," unidades cuadradas";
		3:
			Escribir "Ingrese la base 1 del trapecio";
			Leer base;
			Escribir "Ingrese la base 2 del trapecio";
			Leer base2;
			Escribir "Ingrese la altura del trapecio";
			Leer altura;
			area <- ((base+base2)*altura)/2;
			Escribir "El area del trapecio de base1= ",base," base2= ",base2," y altura= ",altura," es de: ",area," unidades cuadradas";
		De Otro Modo:
			Escribir "*Ingrese una opcion valida";
	FinSegun
FinSubProceso
//*********************************Funcion Banco************************************
SubProceso Banco (clave)
	// Declaramos las variables
	Definir cuenta Como Caracter;
	Definir titular Como Caracter;
	Definir ingreso Como Real;
	Definir retiro Como Real;
	Definir saldo Como Real;
	Definir operacion Como Entero;
	// Valores iniciales
	saldo <- 1000000.00;
	titular <- "Joel Sandoval";
	cuenta <- "1234567890";
	Si clave = "1234" Entonces
		Escribir "*Que operacion desea realizar";
		Escribir "1=>Retiro";
		Escribir "2=>Ingreso";
		Escribir "3=>Consulta";
		Leer operacion;
		Segun operacion Hacer
			1:
				Escribir "*Hola ",titular," ingrese el monto a retirar**";
				Leer retiro;
				Si retiro <= saldo Entonces
					saldo<-(saldo-retiro);
					Escribir "Retire su dinero, su saldo es de= ",saldo," pesos";
				SiNo
					Escribir "Saldo insuficiente";
				FinSi
			2:
				Escribir "*Hola ",titular," ingrese el monto a consignar";
				Leer ingreso;
				Si ingreso<0 Entonces
					Escribir "El monto ingresado ",ingreso," no es invalido";
					Escribir "Por favor ingrese montos mayores a cero (0)";
				SiNo
					saldo<-(saldo+ingreso);
					Escribir "Consignacion exitosa su nuevo saldo es de= ",saldo," pesos";
				FinSi
			3:
				Escribir "*Hola ",titular," ";
				Escribir "*El saldo en su cuenta nro= ",cuenta," es de ",saldo," pesos";
				
			De Otro Modo:
				Escribir "*Operacion invalida";
		FinSegun
	SiNo
		Escribir "Clave invalida";
	FinSi
FinSubProceso
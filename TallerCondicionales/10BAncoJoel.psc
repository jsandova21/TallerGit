//El banco "Su banco fiel" es un banco que inicia sus actividades financieras y necesita una aplicación para llevar las cuentas de sus usuarios;
//por lo tanto, se sugiere que la cuenta tenga los atributos titular y cantidad.
//Para cada cliente las cuentas permitirán realizar ingresos, retiros o consultas de valor.
//En los ingresos no se pueden insertar valores negativos y para los retiros el valor no puede ser mayor al valor que tiene en la cuenta.
Proceso BancoFiel
	// Declaramos las variables
	Definir cuenta Como Caracter;
	Definir titular Como Caracter;
	Definir clave Como Caracter;
	Definir ingreso Como Real;
	Definir retiro Como Real;
	Definir saldo Como Real;
	Definir operacion Como Entero;
	// Valores iniciales
	saldo <- 1000000.00;
	titular <- "Joel Sandoval";
	clave <- "1234";
	cuenta <- "1234567890";
	// Mensaje de bienvenida
	Escribir "**Hola Bienvenido(a) a su Banco Fiel";
	Escribir "**Ingrese su clave de cuatro digitos";
	Leer clave;
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
	
FinProceso

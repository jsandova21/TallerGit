//El pastelero Don Carlos es el mejor pastelero de la ciudad y requiere una aplicación que le permita registrar los pedidos de los clientes en cuanto a las tortas que realiza.
// Cada torta tiene unas características propias como sabor, cantidad (porciones) y decoraciones). Se requiere que la aplicación permita registrar los pedidos,
//las tortas disponibles y las ventas que se registren diariamente.
Proceso Pastelero
	// Declaramos las variables
	Definir opcion Como Entero;
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
	// Mensaje de bienvenida
	Escribir "**Hola Bienvenido(a) la Pasteleria Don Carlos**";
	Escribir "*Elige una opcion";
	Escribir "1=>Registrar pedido";
	Escribir "2=>Inventario";
	Escribir "3=>Ventas Diarias";
	Leer opcion;
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
	
FinProceso

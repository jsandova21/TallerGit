//La Droguería Mi Salud presta sus servicios en la localidad de Suba y requiere una aplicación para poder facturar los productos que vende
//a sus clientes y para ello, los productos tienen unas características que deben indicársele al cliente para que pueda escoger el producto a comprar.
//Para cada cliente, se tienen las opciones de compra de producto, consulta de precios por producto y devoluciones en caso de que se presenten.
Proceso Drogueria
	// Declaramos las variables
	Definir dproducto Como Caracter;
	Definir nproducto Como Entero;
	Definir carac_prod Como Entero;
	Definir opcion Como Entero;
	// Solicitamos al usuario que elija una opccion
	Escribir "*Hola Bienvenido a Drogueria Mi Salud";
	Escribir "*Que deceas hacer (Elige una opcion)";
	Escribir "1=>Comprar";
	Escribir "2=>Consultar";
	Escribir "3=>Devolver";
	Leer opcion;
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
FinProceso

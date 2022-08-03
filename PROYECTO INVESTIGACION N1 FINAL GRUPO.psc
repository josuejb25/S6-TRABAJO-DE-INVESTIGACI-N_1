// Funciones de usuario para el Algoritmo Menu
// Presenta el menu en la pantalla
Funcion opc = presentarMenu(titulo,opciones,lim) 
	Escribir titulo;
	Escribir "";
	Para pos=1 Hasta lim  Hacer
		Escribir opciones[pos];
	Fin Para
	Escribir "Elija opcion[1...",lim,"]: ";
	Leer opc;
FinFuncion

funcion suma2numeros()
	Escribir "Sumar Dos  Numeros";
	Escribir "Ingrese el primer número: " Sin Saltar;
	leer n1;
	escribir "Ingrese el segundo número: " Sin Saltar;
	leer n2;
	suma = n1 + n2;
	escribir "La suma es: ", suma;
	Esperar 3 Segundos;
FinFuncion

funcion SumarORestar()
	Escribir "Sumar o Restar";
	Escribir "Ingrese el primer número: " Sin Saltar;
	leer n1;
	escribir "Ingrese el segundo número: " Sin Saltar;
	leer n2;
	escribir "Para sumar (S) o restar (R): " Sin Saltar;
	Repetir
		leer vopc;
		Si no(vopc='R' o vopc='S' o vopc='s' o vopc='r') Entonces
			escribir "Ha ocurrido un error, intentelo de nuevo";
			esperar 3 segundos;
		Fin Si
	Hasta Que (vopc='R' o vopc='S' o vopc='s' o vopc='r')
	
	Si vopc = 'S' o vopc = 's' Entonces
		suma = n1 + n2;
		escribir "El resultado de la suma es: ", suma;
	SiNo
		resta = n1 - n2;
		escribir "El resultado de la resta es: ", resta;
	Fin Si
	Esperar 3 Segundos;
FinFuncion

// Calcula el proceso matematico de dos numeros dada su operacion

Funcion calculadora(operacion, num1, num2)
	Si operacion = "+" Entonces
		Escribir num1,"+",num2,"=",num1+num2;
	SiNo
		Si operacion = "-" Entonces
			Escribir num1,"-",num2,"=",num1-num2;
		SiNo
			Si operacion = "*" Entonces
				Escribir num1,"*",num2,"=",num1*num2;
			SiNo
				Si operacion = "/" Entonces
					si num2 = 0 Entonces
						Escribir "No se puede dividir para cero";
					sino
						Escribir num1,"/",num2,"=",num1/num2;
					FinSi
				SiNo
					Si operacion = "%" Entonces
						Escribir num1,"%",num2,"=",num1%num2;
					SiNo
						Si operacion = "^" Entonces
							Escribir num1,"^",num2,"=",num1 ^ num2;
						SiNo
							Escribir "Ha occurido un error, intentelo de nuevo";
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	Fin Si
FinFuncion

funcion MayorDe2Numeros()
	Escribir "El mayor de dos números";
	Escribir "Ingrese Núm1: " Sin Saltar;
	Leer num1;
	Escribir "Ingrese Núm2: " Sin Saltar;
	Leer num2;
	Si num1 > num2 Entonces
		escribir "El mayor es ", num1;
	SiNo
		Escribir "El mayor es ", num2;
	Fin Si
	Escribir "Regresando Al Menu...";
	Esperar 3 Segundos;
FinFuncion

funcion MayorDe3Numeros
	Escribir "Averiguar el mayor de tres números";
	Escribir "Ingrese Núm1: " Sin Saltar;
	Leer num1;
	Escribir "Ingrese Núm2: " Sin Saltar;
	Leer num2;
	Escribir "Ingrese Núm3: " Sin Saltar;
	Leer num3;
	Si num1 > num2 y num1 > num3 Entonces
		escribir "El mayor es ", num1;
	SiNo
		Si num2 > num1 y num2 > num3 Entonces
			escribir "El mayor es ", num2;
		SiNo
			Escribir "El mayor es ", num3;
		Fin Si
	Fin Si
	Escribir "Regresando Al Menu...";
	Esperar 3 Segundos;
FinFuncion

funcion comprarproducto
	// La despensa "El Baraton", a todas las ventas que pasen de $100,
	//se les aplicará un  descuento del 10%, a  todo los demás se les aplicará sólo el 5% 
	// luego del recargo del iva del 12%
	Escribir "El Baraton";
	Escribir "Comprar productos";
	Escribir "Ingresar venta: " Sin Saltar;
	Leer venta;
	iva = venta * 0.12;
	Si venta > 100 Entonces
		descuento = venta * 0.1;
	SiNo
		descuento = venta * 0.05;
	Fin Si
	escribir "";
	valorfinal = venta + iva - descuento;
	Escribir "El IVA es: ", iva;
	escribir "El descuento es: ", descuento;
	Escribir "El total a pagar por el cliente es: ", valorfinal;
	escribir "";
	
	Escribir "Pulsar teclar para regresar al menu principal...";
	leer tec;
FinFuncion

funcion PagoSueldo
	// Ingresar el nombre,horas trabajadas, valor hora, horas50 y horas100 de sobretiempo
	// se pide calcular el rol del pago del trabajor dado los siguientes calculos.
	//ROL DE PAGO:
	// sueldo del trabajador(horasTrajabadas por el valorHora)
	// el sobretiempo=(horas50*1.5+horas100*2)*Valor
	// total ingreos = sueldo+sobretiempo
	// descuento= totalingresos*9.35%
	// liquido= totalingresos - descuento
	escribir "Pago de sueldo";
	Escribir "Digite sus nombres completos: " sin saltar;
	leer nombre;
	escribir "Ingrese sus horas trabajadas: " sin saltar;
	leer horastrabajadas;
	Escribir "¿Cuánto es el valor por cada hora? " sin saltar;
	leer valorhora;
	Escribir "Escriba sus horas50: " sin saltar;
	leer horas50;
	Escribir "Escriba sus horas100: " sin saltar;
	leer horas100;
	sueldo = horastrabajadas * valorhora;
	sobretiempo = (horas50 * 1.5 + horas100 * 2) * valorhora;
	totalingreso = sueldo + sobretiempo;
	descuento = totalingreso * 9.35 / 100;
	liquido = totalingreso - descuento;
	Escribir "";
	Escribir "El sueldo es: ", sueldo;
	Escribir "El sueldo por sobretiempo es: ", sobretiempo;
	Escribir "El ingreso total adquirido es: ", totalingreso;
	Escribir "El descuento fue: ",  descuento;
	escribir "El total líquido a recibir es: ", liquido;
	escribir "";
	
	Escribir "Pulsar teclar para regresar al menu principal...";
	leer tec;
FinFuncion

funcion NotaAlumno
	// dada dos notas calcular el promedio y presentar el mensaja "Aprobado" si el promedio
	// mayor 70 y reprobado si es menor que 70
	Escribir "Notas de alumnos";
	Escribir "Escribir nota1: " Sin Saltar;
	Repetir
		leer nota1;
	Hasta Que nota1 >= 1 y nota1 <= 100
	Escribir "Escribir nota2: " sin saltar;
	Repetir
		leer nota2 ;
	Hasta Que nota2 >= 1 y nota2 <= 100
	promedio = (nota1 + nota2) / 2;
	Si promedio > 70 Entonces
		Escribir "Aprobado";
	SiNo
		Escribir "Reprobado";
	Fin Si
	
	Escribir "";
	Escribir "Pulsar teclar para regresar al menu principal...";
	leer tec;
FinFuncion

funcion Verificar_positivo_negativo()
	// dado un numero indicar si es positivo o negativo
	Escribir "VERIFICAR SI UN NÚMERO ES POSITIVO O NEGATIVO";
	Escribir "Escribir un numero: " Sin Saltar;
	leer num;
	Si num >= 0 Entonces
		Escribir "El número es positivo";
	SiNo
		Escribir "El número es negativo";
	Fin Si
	Escribir "";
	Escribir "Pulsar teclar para regresar al menu principal...";
	leer tec;
FinFuncion

funcion Verificar_par_impar()
	Escribir "Averiguar si el número es par o impar";
	Escribir "Ingrese cualquier número: " Sin Saltar;
	Leer num;
	Si num % 2 = 0 Entonces
		Escribir "El número es par";
	SiNo
		Escribir "El número es impar";
	Fin Si
	escribir "";
	Escribir "Pulsar teclar para regresar al menu principal...";
	leer tec;
FinFuncion

funcion multiplo_cualquier_numero
	// dado dos nmeros indicar si el numero1 es multiplo del numero2
	Escribir "Múltiplo de cualquier Número";
	Escribir "Ingrese num1 positivo: " Sin Saltar;
	Repetir
		Leer num1;
	Hasta Que num1 > 0
	Escribir "Ingrese núm2 positivo" sin saltar;
	Repetir
		Leer num2;
	Hasta Que num2 > 0
	Si num1 % num2 = 0 Entonces
		Escribir "El número ", num1, " es múltiplo de ", num2;
	SiNo
		Escribir "El número ", num1, " no es múltiplo de ", num2;
	Fin Si
	
	escribir "";
	Escribir "Pulsar teclar para regresar al menu principal...";
	leer tec;
FinFuncion

// Verifica si un numero es primo o no y devueve 1 si es primo y 0 si no es
Funcion bandera=primo(num)
	Definir r,c,bandera Como Entero;
	bandera=1;c=2;
	// recorro mientras sea primo y c no lleaga al numero
	Mientras bandera=1 y c < num Hacer
		r=num MOD c;
		Si r=0 Entonces
			bandera=0;
		SiNo
			c=c+1;
		Fin Si
	Fin Mientras
	
FinFuncion
// Recorrer y presentar cadena caracter por caracter
Funcion presentarCadena(texto)
	Definir pos,lon Como Entero;
    //Escribir Subcadena(texto,2,3)
	lon = Longitud(texto);
	Para pos=1 Hasta lon  Hacer
		Escribir Subcadena(texto,pos,pos);
	Fin Para
FinFuncion

Funcion SECUENCIA_MAYOR_Y_MENOR()
	vmenor=0;
	vmayor=0;
	Repetir
		Escribir "Ingresar un numero: " sin saltar;
		Leer num;
		Si num > vmayor Entonces
			vmayor = num;
		SiNo
			si num < vmenor Entonces
				vmenor = num;
			FinSi
		Fin Si
		Escribir "¿Desea seguir ingresando otro valor (S/N)? " sin saltar;
		Repetir
			leer respuesta;
		Hasta Que respuesta = 'S' o respuesta = 's' o respuesta = 'N' o respuesta = 'n'
	Hasta Que respuesta = "N" o respuesta = 'n'
	Escribir "";
	Escribir "El número mayor de las variables es: ", vmayor;
	Escribir "El número menor de las variable es: ", vmenor;
FinFuncion

Funcion SECUENCIA_POSITIVOS()
	positivos=0;
	Repetir
		Escribir "Ingresar un numero: " sin saltar;
		Leer num;
		Si num > 0 Entonces
			positivos = positivos + 1;
		Fin Si
		Escribir "¿Desea seguir ingresando otro valor (S/N)? " sin saltar;
		Repetir
			leer respuesta;
		Hasta Que respuesta = 'S' o respuesta = 's' o respuesta = 'N' o respuesta = 'n'
	Hasta Que respuesta = "N" o respuesta = 'n'
	Escribir "";
	Escribir "La cantidad de números positivos fueron: ", positivos;
FinFuncion

Funcion SECUENCIA_SUMA_MULTIPLOS5()
	// dada una serie d enumeros presntar la suma de lo numeros multiplos de 5
	//menuNumeros[14] = "14)Suma de los multiplos de cinco de una serie de numeros"
	acum = 0;
	Repetir
		Escribir "Ingresar un numero: " sin saltar;
		Leer num;
		Si num % 5 = 0 Entonces
			acum = acum + num;
		Fin Si
		Escribir "¿Desea seguir ingresando otro valor (S/N)? " sin saltar;
		Repetir
			leer respuesta;
		Hasta Que respuesta = 'S' o respuesta = 's' o respuesta = 'N' o respuesta = 'n'
	Hasta Que respuesta = "N" o respuesta = 'n'
	Escribir "";
	Escribir "La suma de los múltiplos de 5 en la secuencia es: ", acum;
FinFuncion

Funcion SECUENCIA_PARES_HASTA_N()
	// presentar los numeros pares desde 2 hasta N
	//menuNumeros[15] = "15)Generar y presentar los Numeros pares del 2 a N"
	Escribir "Ingrese el límite de la secuencia: " sin saltar;
	Leer n;
	vpar = 2;
	Repetir
		escribir vpar;
		vpar = vpar + 2;
	Hasta Que vpar > n
	Escribir "";
FinFuncion

Funcion SECUENCIA_PRESENTE_SUME_PROMEDIE_NEGATIVOS()
	// dada una serie de numeros presente el numero siempre y cuando sea negativo
	// y antes de finalizar presente la cantidad, la suma y el promedio de dichos numeros negativos
	//menuNumeros[16] = "16)Cantidad, Suma y Promedio de numeros negativos de una serie"
	Dimension vector[100] ;
	pos = 0;
	acum = 0;
	Repetir
		Escribir "Ingresar un numero: " sin saltar;
		Leer num;
		Si num < 0 Entonces
			pos = pos + 1;
			vector[pos] = num;
			acum = acum + num;
		Fin Si
		Escribir "¿Desea seguir ingresando otro valor (S/N)? " sin saltar;
		Repetir
			leer respuesta;
		Hasta Que respuesta = 'S' o respuesta = 's' o respuesta = 'N' o respuesta = 'n'
	Hasta Que respuesta = "N" o respuesta = 'n'
	si pos > 0 entonces
		promedio = acum / pos;
	SiNo
		promedio = 0;
	fin si
	Escribir "";
	Escribir "El total de números negativos fueron: ", pos;
	Escribir "La suma de los números negativos es: ", acum;
	Escribir "El promedio fue: ", promedio;
FinFuncion
funcion PROMEDIO_SECUENCIA_ENTRE_100_Y_500()
	// dado una serie de numeros presentar el promedio de los numeros que sean >= 100 and <=500 
	//menuNumeros[17] = "17)Serie promedio de rango de numeros"
	acum = 0;
	cont = 0;
	Repetir
		Escribir "Ingresar un número : " sin saltar;
		Leer num;
		si num >= 100 y num <= 500 entonces
			cont = cont + 1;
			acum = acum + num;
		fin si
		
		Escribir "¿Desea seguir ingresando otro valor (S/N)? " sin saltar;
		Repetir
			leer respuesta;
		Hasta Que respuesta = 'S' o respuesta = 's' o respuesta = 'N' o respuesta = 'n'
	Hasta Que respuesta = "N" o respuesta = 'n'
	si cont > 0 entonces
		promedio = acum / cont;
	SiNo
		promedio = 0;
	fin si
	ESCRIBIR "Suma: ", acum;
	escribir "Contador ", cont;
	Escribir "";
	Escribir "Promedio de los números entre >= 100 and <=500 es: ", promedio;
FinFuncion

Funcion VALIDARNUMERO_SEA_POSITIVO()
	// Ingrese un numero si este es postivo finalice sino vuelva a ingresarlo
	//	menuNumeros[18] = "18)Validar que un numero sea positivo"
	num = 0;
	Repetir
		escribir "Escriba un número positivo: " Sin Saltar;
		leer num;
		SI num < 0 Entonces
			Escribir "Escriba correctamente el número, debe ser positivo";
		FinSi
	Hasta Que num > 0
	
	Escribir "";
FinFuncion

Funcion Base_exponente()
	// dado dos numeros, base y exponente. calcular la base elevada al exponente 
	//menuNumeros[19] = "19)Base y exponente"
	Escribir "Ingresar número base: " Sin Saltar;
	leer base;
	escribir "Ingresar exponente: " Sin Saltar;
	leer exponente;
	resultado = base ^ exponente;
	escribir "";
	escribir "El resultado es: ", resultado;
FinFuncion

Funcion serie_factoriales()
	// dada una serie de numeros calcular los factoriales de dichos numero la serie termina
	// cuando un numero de la serie sea igual a cero.
	//menuNumeros[20] = "20)Serie Factoriales"
	Repetir
		Repetir
			escribir "Ingresar número positivo: " Sin Saltar;
			leer num;
		Hasta Que num >= 0
		si num <> 0 entonces
			cont = 1;
			acum = 1;
			Repetir
				acum = acum * cont;
				cont = cont + 1;
			Hasta Que cont >= num + 1
			escribir "El factorial de ", num, " es: ", acum;
		fin si
	Hasta Que num = 0
FinFuncion

funcion contar_los_digitos()
	// contar los digitos de cualquier numero: ej: 342 = 3 digitos
	//menuRazonamiento[1] = "1)Cuantos Digitos tiene un Numero"
	Repetir
		escribir "Ingresar número positivo";
		leer num;
	Hasta Que num > 0
	
	
	cont = 0;
	Repetir
		cont = cont + 1;
		num = trunc(num / 10);
	Hasta Que num = 0
	escribir "Hubieron ", cont, " dígitos en el número";
FinFuncion

funcion Binario_a_decimal()
	// ejemplo: binario= 1111101000  ==> 1000 (decimal)
	//menuRazonamiento[2] = "2) Convertir de Base 2 a Base 10"
	escribir "Escribir número binario: ";//1010000001
	leer num;
	digitos = 0;
	num2 = num;
	Repetir
		num2 = trunc(num2 / 10);
		digitos = digitos + 1;
	Hasta Que num2 = 0
	//digitos = 9
	
	
	
	acum = 0;
	potenciador = 1;
	Repetir
		resp = num % 10;
		si resp = 1 Entonces
			acum = acum + potenciador;
		FinSi
		potenciador = potenciador * 2;
		num = trunc(num/10);
	Hasta Que num = 0
	escribir "El decimal es: ", acum;
FinFuncion

funcion Binario_a_hexadecimal()
	// ejemplo: binario= 1111101000  ==> 1000 (decimal)
	//menuRazonamiento[2] = "2) Convertir de Base 2 a Base 10"
	escribir "Escribir número binario: ";//1010000001
	leer num;
	digitos = 0;
	num2 = num;
	Repetir
		num2 = trunc(num2 / 10);
		digitos = digitos + 1;
	Hasta Que num2 = 0
	//digitos = 9
	
	
	
	acum = 0;
	potenciador = 1;
	Repetir
		resp = num % 10;
		si resp = 1 Entonces
			acum = acum + potenciador;
		FinSi
		potenciador = potenciador * 2;
		num = trunc(num/10);
	Hasta Que num = 0
	
	dimension vector[100];
	Para i<-1 Hasta 99 Con Paso 1 Hacer
		vector[i] = "";
	Fin Para
	pos = 1;
	escribir "El decimal es: ", acum;
	Repetir
		resp = acum % 16;
			si resp = 10 entonces
				vector[pos] = "A";
			fin si
			si resp = 11 entonces
				vector[pos] = "B";
			fin si
			si resp = 12 entonces
				vector[pos] = "C";
			fin si
			si resp = 13 entonces
				vector[pos] = "D";
			fin si
			si resp = 14 entonces
				vector[pos] = "E";
			fin si
			si resp = 15 entonces
				vector[pos] = "F";
			fin si
			vector[pos] = ConvertirATexto(resp);
		pos = pos + 1;
		acum = trunc(acum / 16);
	Hasta Que acum = 0
	dimension vector2[100];
	Para i<-1 Hasta 99 Con Paso 1 Hacer
		vector2[i] = "";
	Fin Para
	pos2 = 1;
	Repetir
		vector2[pos2] = vector[pos];
		pos = pos - 1;
		pos2 = pos2 + 1;
	Hasta Que pos = 0
	
	escribir "El hexadecimal es: ";
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		escribir vector2[i] Sin Saltar;
	Fin Para
FinFuncion

funcion fibonacci()
	// ejemplo Si n=8 => La serie de fibonacci es = 0 1 1 2 3 5 8 13
	//menuRazonamiento[4] = "4)Serie de fibonacci hasta N"
	escribir "Ingrese el límite: ";
	leer n;
	ant = 1;
	act = 1;
	sig = 1;
	cont = 1;
	escribir "0,1," Sin Saltar;
	Repetir
		escribir sig, "," Sin Saltar;
		sig = ant + act;
		ant = act;
		act = sig;
		cont = cont + 1;
	Hasta Que cont > n
FinFuncion

funcion divisores_de_un_numero()
	// ejemplo si numero=10 ==> resp= 1,2,5
	//menuRazonamiento[5] = "5)Divisores de un Numero"
	escribir "Digite un número: " Sin Saltar;
	leer num;
	cont = 1;
	Repetir
		Si num % cont = 0 Entonces
			escribir cont, "," sin saltar;
		FinSi
		cont = cont + 1;
	Hasta Que cont > num
FinFuncion

funcion numero_perfecto
	// cuando los divisores de un numero es igual al numero se dice que ese numero es perfecto
	// si numero es 6 los divisores son 1,2,3 sumados igual a 6 es igual al numero ==> es perfecto
	//menuRazonamiento[6] = "6)Numero Perfecto"
	escribir "Digite un número: " Sin Saltar;
	leer num;
	cont = 1;
	sum = 0;
	Repetir
		Si num % cont = 0 Entonces
			escribir cont, "," sin saltar;
			sum = sum + cont;
		Fin Si
		cont = cont + 1;
	Hasta Que cont >= num
	escribir "";
	Si num = sum Entonces
		escribir "Es número perfecto";
	SiNo
		escribir "El número no es perfecto";
	Fin Si
FinFuncion

funcion numeroprimo()
	// un numero es primo cuando no tiene divisores excepto el 1 y el propio numero
	// ejemplo 5 no tiene divsores es "primo"  9 tiene como divisor al 3 por tanto no es "primo"
	//menuRazonamiento[7] = "7)Numero Primo"
	escribir "Digite un número: " Sin Saltar;
	leer num;
	cont = 1;
	contdiv = 0;
	Repetir
		Si num % cont = 0 Entonces
			contdiv = contdiv + 1;
		Fin Si
		cont = cont + 1;
	Hasta Que cont > num
	escribir "";
	si contdiv = 2 Entonces
		escribir "Es número primo";
	SiNo
		escribir "No es un número primo";
	FinSi
FinFuncion

Funcion numeros_amigos()
	// dos numeros son amigos si la suma de los divisores del primer numero es = a la suma de los
	// divisores del segundo numero Eje: numero=6 (1+2+3)=6 numero 25(1+5)=6 ==> 6=6 son amigos 
	//menuRazonamiento[8] = "8)Verificar si dos numeros son Amigos"
	escribir "Escribir núm1: " Sin Saltar;
	leer num1;
	cont = 1;
	sum = 0;
	Repetir
		Si num1 % cont = 0 Entonces
			escribir cont, "," sin saltar;
			sum = sum + cont;
		Fin Si
		cont = cont + 1;
	Hasta Que cont >= num1
	escribir "";
	
	escribir "Escribir núm2: " Sin Saltar;
	leer num2;
	cont2 = 1;
	sum2 = 0;
	Repetir
		Si num2 % cont2 = 0 Entonces
			escribir cont2, "," sin saltar;
			sum2 = sum2 + cont2;
		Fin Si
		cont2 = cont2 + 1;
	Hasta Que cont2 >= num2
	escribir "";
	Si sum = sum2 Entonces
		escribir "Los números son amigos";
	SiNo
		escribir "Los números no son amigos";
	Fin Si
FinFuncion

funcion primos_gemelos()
	// dos numeros son primos gemelos si ambos numeros son primos en valor absoluto y la resta de
	// los 2 numeros es == 2 eje: 11 y 13 abs(11-13)==2
	//menuRazonamiento[9] = "9)Verificar si dos Numeros son Primos Gemelos"
	escribir "Escribir núm1: " Sin Saltar;
	leer num1;
	cont = 1;
	contdiv = 0;
	Repetir
		Si num1 % cont = 0 Entonces
			contdiv = contdiv + 1;
		Fin Si
		cont = cont + 1;
	Hasta Que cont > num1
	escribir "";
	si contdiv = 2 Entonces
		escribir "Escribir num2: " Sin Saltar;
		leer num2;
		
		cont = 1;
		contdiv = 0;
		Repetir
			Si num2 % cont = 0 Entonces
				contdiv = contdiv + 1;
			Fin Si
			cont = cont + 1;
		Hasta Que cont > num2
		escribir "";
		si contdiv = 2 Entonces
			Si abs(num1 - num2) = 2 Entonces
				Escribir "Son primos gemelos";
			SiNo
				Escribir "No son primos gemelos";
			Fin Si
		SiNo
			escribir "El segundo número no es primo por lo tanto no son primos gemelos";
		FinSi
	SiNo
		escribir "El primer número no es primo, no se puede validar si son primos gemelos";
	FinSi
FinFuncion

funcion serie_cualesson_primos()
	// por cada numero de una serie verifique si es primo, si es primo contarlo
	//menuRazonamiento[10] = "10)De una serie de numeros cuantos son Primos"
	contarprimos = 0;
	Repetir
		Escribir "Ingresar un numero: " sin saltar;
		Leer num;
		cont = 1;
		contdiv = 0;
		Repetir
			Si num % cont = 0 Entonces
				contdiv = contdiv + 1;
			Fin Si
			cont = cont + 1;
		Hasta Que cont > num
		escribir "";
		si contdiv = 2 Entonces
			contarprimos = contarprimos + 1;
		FinSi
		
		Escribir "¿Desea seguir ingresando otro valor (S/N)? " sin saltar;
		Repetir
			leer respuesta;
		Hasta Que respuesta = 'S' o respuesta = 's' o respuesta = 'N' o respuesta = 'n'
	Hasta Que respuesta = "N" o respuesta = 'n'
	escribir "El total de primos de la serie es: ", contarprimos;
FinFuncion

funcion llenararreglo()
	// dado n valores ingresarlos a un arreglo
	//menuCadenaVectores[1] = "1)llenar un arreglo de numeros"
	dimension vector[100];
	cont = 1;
	Repetir
		escribir "Escriba un valor: " Sin Saltar;
		leer num;
		vector[cont] = num;
		cont = cont + 1;
		Escribir "¿Desea seguir ingresando otro valor (S/N)? " sin saltar;
		Repetir
			leer respuesta;
		Hasta Que respuesta = 'S' o respuesta = 's' o respuesta = 'N' o respuesta = 'n'
	Hasta Que respuesta = "N" o respuesta = 'n'
finfuncion

// Presenta los datos de un arreglo dada una posicion inicial y final
Funcion presentarArreglo()
	dimension vector[100];
	cont = 1;
	Repetir
		escribir "Escribir un valor: " Sin Saltar;
		leer num;
		vector[cont] = num;
		cont = cont + 1;
		Escribir "¿Desea seguir ingresando otro valor (S/N)? " sin saltar;
		Repetir
			leer respuesta;
		Hasta Que respuesta = 'S' o respuesta = 's' o respuesta = 'N' o respuesta = 'n'
	Hasta Que respuesta = "N" o respuesta = 'n'
	Para i=1 Hasta cont-1 Con Paso 1 Hacer
		escribir vector[i] Sin Saltar;
	Fin Para
FinFuncion

// buscar el dato y presentar la posicion en que se encuentra el dato en el arreglo
// buscar un valor en un arreglo y retorna la posicion si lo encuentra sino retorna -1
Funcion buscarArreglo()
	dimension vector[100];
	cont = 1;
	Repetir
		escribir "Escribir un valor: " Sin Saltar;
		leer num;
		vector[cont] = num;
		cont = cont + 1;
		Escribir "¿Desea seguir ingresando otro valor (S/N)? " sin saltar;
		Repetir
			leer respuesta;
		Hasta Que respuesta = 'S' o respuesta = 's' o respuesta = 'N' o respuesta = 'n'
	Hasta Que respuesta = "N" o respuesta = 'n'
	Para i=1 Hasta cont-1 Con Paso 1 Hacer
		escribir vector[i] Sin Saltar;
	Fin Para
	escribir "";
	escribir "";
	escribir "Escriba la posición del vector que desea mostrar" Sin Saltar;
	leer h;
	escribir "";
	escribir "El valor en la posición ", h, " es ", vector[h];
FinFuncion

funcion Mayor_en_un_arreglo()
	// Presentar el mayor de los datos de un arreglo
	//menuCadenaVectores[4] = "4)Elemento Mayor de un arreglo"
	dimension vector[100];
	cont = 1;
	vmayor = 0;
	Repetir
		escribir "Escriba un valor: " Sin Saltar;
		leer num;
		vector[cont] = num;
		cont = cont + 1;
		Escribir "¿Desea seguir ingresando otro valor (S/N)? " sin saltar;
		Repetir
			leer respuesta;
		Hasta Que respuesta = 'S' o respuesta = 's' o respuesta = 'N' o respuesta = 'n'
	Hasta Que respuesta = "N" o respuesta = 'n'
	pos = 0;
	Para i=1 Hasta cont-1 Con Paso 1 Hacer
		Si vector[i] > vmayor Entonces
			vmayor = vector[i];
			pos = i;
		Fin Si
	Fin Para
	escribir "El mayor valor es: ", vmayor;
	escribir "Está en la posición: ", pos;
FinFuncion

Funcion CopiarArreglo()
	// Dado un arreglo copie los datos en otro de atras para delante 
	//menuCadenaVectores[5] = "5)Copiar los datos de un arreglo en otro invertido"
	dimension vector[100];
	cont = 1;
	Repetir
		escribir "Escriba un valor: " Sin Saltar;
		leer num;
		vector[cont] = num;
		cont = cont + 1;
		Escribir "¿Desea seguir ingresando otro valor (S/N)? " sin saltar;
		Repetir
			leer respuesta;
		Hasta Que respuesta = 'S' o respuesta = 's' o respuesta = 'N' o respuesta = 'n'
	Hasta Que respuesta = "N" o respuesta = 'n'
	Para i=1 Hasta cont-1 Con Paso 1 Hacer
		escribir vector[i] Sin Saltar;
	Fin Para
	escribir "";
	escribir "";
	
	Dimension  vector2[100];
	cont2 = cont-1;
	cont = 1;
	Para i=cont2 Hasta 1 Con Paso -1 Hacer
		vector2[cont] = vector[i] ;
		cont = cont + 1;
	Fin Para
	Para i=2 Hasta cont-1 Con Paso 1 Hacer
		escribir vector2[i] Sin Saltar;
	Fin Para
FinFuncion

Funcion SumarArreglos()
	// Dado los arreglos1 y arreglos 2 sumarlos valor por valor del arreglo1 y arreglo2
	// y asigmarlo en el arreglo3(los tres arreglos deben tener la misma longitud)
	//menuCadenaVectores[6] = "6)Dados los arreglos arreglo1[] y arreglo2[] Sumarlos en al arreglo Suma[]"
	dimension arreglo1[5];
	arreglo1[1]=1;
	arreglo1[2]=2;
	arreglo1[3]=5;
	arreglo1[4]=8;
	arreglo1[5]=30;
	Para i=1 Hasta 5 Con Paso 1 Hacer
		escribir arreglo1[i], "," Sin Saltar;
	Fin Para
	escribir "";
	dimension arreglo2[5];
	arreglo2[1]=1;
	arreglo2[2]=-5;
	arreglo2[3]=3;
	arreglo2[4]=10;
	arreglo2[5]=14;
	Para i=1 Hasta 5 Con Paso 1 Hacer
		escribir arreglo2[i], "," Sin Saltar;
	Fin Para
	escribir "";
	dimension suma[100];
	Para i=1 Hasta 5 Con Paso 1 Hacer
		suma[i] = arreglo1[i] + arreglo2[i] ;
	Fin Para
	escribir "La suma de los dos arreglos es:";
	Para i=1 Hasta 5 Con Paso 1 Hacer
		escribir suma[i], "," Sin Saltar;
	Fin Para
	
	escribir "";
FinFuncion

funcion ArregloNumerosPrimos()
	// de una serie de numeros solo guardar en un arreglo los nymeros primos
	//menuCadenaVectores[7] = "7)Dado N numeros guardar en un arreglo los numeros primos"
	dimension arreglo[100];
	cont2 = 1;
	Repetir
		escribir "Escriba un valor: " Sin Saltar;
		leer num;
		cont = 1;
		contdiv = 0;
		Repetir
			Si num % cont = 0 Entonces
				contdiv = contdiv + 1;
			Fin Si
			cont = cont + 1;
		Hasta Que cont > num
		escribir "";
		si contdiv = 2 Entonces
			arreglo[cont2] = num;
			cont2 = cont2 + 1;
			escribir "Sí almacena ", num;
		FinSi
		Escribir "¿Desea seguir ingresando otro valor (S/N)? " sin saltar;
			leer respuesta;
	Hasta Que respuesta = 'S' o respuesta = 's' o respuesta = 'N' o respuesta = 'n'
	escribir "";
	escribir "Los números primos guardados en el arreglo son:";
	escribir "";
	Para i = 1 Hasta cont2 - 1 Con Paso 1 Hacer
		escribir arreglo[i] Sin Saltar;
	Fin Para
finfuncion

funcion Arreglo_Promedio_Notas_Mayor_70()
	// dadas las notas guardades en un arreglos obtener el promedio de las notas >= 70
	//menuCadenaVectores[8] = "8)Dadas los datos de un arreglo obtener el promedio de las notas >=> 70"
	dimension arreglo[100];
	cont = 1;
	Repetir
		escribir "Escribir nota del estudiante: " Sin Saltar;
		leer num;
		arreglo[cont] = num;
		cont = cont + 1;
		Escribir "¿Desea seguir ingresando otra nota (S/N)? " sin saltar;
		Repetir
			leer respuesta;
		Hasta Que respuesta = 'S' o respuesta = 's' o respuesta = 'N' o respuesta = 'n'
	Hasta Que respuesta = "N" o respuesta = 'n'
	escribir "";
	suma = 0;
	promedio = 0;
	cont2 = 0;
	Para i = 1 Hasta cont - 1 Con Paso 1 Hacer
		si arreglo[i] > 70 entonces
			suma = suma + arreglo[i];
			cont2 = cont2 + 1;
		FinSi
	Fin Para
	si cont > 0 Entonces
		promedio = suma / cont2;
	SiNo
		promedio = 0;
	finsi
	escribir "El promedio de las notas mayores a 70 es: ", promedio;
	escribir "";
FinFuncion

funcion Arreglo_Presentar_caracter_por_caracter()
	// presentar caracter por caracter de una cadena
	//menuCadenaVectores[9] = "9)Dada una cadena presentarla caracter por caracter"
	dimension arreglo[100];
	Escribir "Escriba un mensaje: " Sin Saltar;
	leer vtexto;
	pos = 1;
	Repetir
		arreglo[pos] = subcadena(vtexto, 1, 1);
		vtexto = subcadena(vtexto, 2, longitud(vtexto));
		pos = pos + 1;
	Hasta Que vtexto = ""
	escribir "";
	escribir "El mensaje por cada letra es: ";
	Para i = 1 Hasta pos - 1 Con Paso 1 Hacer
		escribir arreglo[i];
	Fin Para
FinFuncion

funcion cadena_invertida()
	// presentar  una cadena al reves
	//menuCadenaVectores[10] = "10)Dada una cadena presentarla invertida"
	dimension arreglo[100];
	Escribir "Escribir un mensaje: " Sin Saltar;
	leer vtexto;
	pos = 1;
	Repetir
		arreglo[pos] = subcadena(vtexto, 1, 1);
		vtexto = subcadena(vtexto, 2, longitud(vtexto));
		pos = pos + 1;
	Hasta Que vtexto = ""
	escribir "";
	escribir "La cadena invertida es: ";
	Para i = pos - 1 Hasta 1 Con Paso -1 Hacer
		escribir arreglo[i] Sin Saltar;
	Fin Para
FinFuncion

funcion cadena_contar_vocales()
	// contar las vocales de que tiene una cadena cualquiera
	//menuCadenaVectores[11] = "11)Dada una cadena indicar cuantos vocales tiene"
	dimension arreglo[100];
	vocales = 0;
	Escribir "Escribir un mensaje: " Sin Saltar;
	leer vtexto;
	pos = 1;
	Repetir
		arreglo[pos] = subcadena(vtexto, 1, 1);
		vtexto = subcadena(vtexto, 2, longitud(vtexto));
		pos = pos + 1;
	Hasta Que vtexto = ""
	Para i = 1 Hasta pos - 1 Con Paso 1 Hacer
		si arreglo[i] = "a" o arreglo[i] = "A" o arreglo[i] = "e" o arreglo[i] = "E" o arreglo[i] = "i" o arreglo[i] = "I" o arreglo[i] = "o" o arreglo[i] = "O" o arreglo[i] = "u" o arreglo[i] = "U" Entonces
			vocales = vocales + 1;
		FinSi
	Fin Para
	escribir "";
	escribir "La cantidad de vocales que tiene la cadena son de: ", vocales;
FinFuncion

funcion cadena_contar_consonantes()
	// contar las palabras de una cadena
	//menuCadenaVectores[12] = "12)Dada una cadena indicar cuantos palabras tiene"
	dimension arreglo[100];
	consonantes = 0;
	Escribir "Escriba un mensaje: " Sin Saltar;
	leer vtexto;
	pos = 1;
	Repetir
		arreglo[pos] = subcadena(vtexto, 1, 1);
		pos = pos + 1;
	Hasta Que vtexto = ""
	Para i = 1 Hasta pos - 1 Con Paso 1 Hacer
		si no (arreglo[i] = "a" o arreglo[i] = "A" o arreglo[i] = "e" o arreglo[i] = "E" o arreglo[i] = "i" o arreglo[i] = "I" o arreglo[i] = "o" o arreglo[i] = "O" o arreglo[i] = "u" o arreglo[i] = "U" o arreglo[i] = " ") Entonces
			consonantes = consonantes + 1	;
		FinSi
	Fin Para
	escribir "";
	escribir "La cantidad de consonantes que tiene la cadena son de: ", consonantes;
FinFuncion


funcion Buscar_caracter_en_cadena()
	// buscar si un caracteer ingresado se encuentra en una cadena si es asi presentar
	// la posicion en que se encuntra ese caracter en la cedena caso contrario presentar -1
	dimension arreglo[100];
	Escribir "Escriba un mensaje: " Sin Saltar;
	leer vtexto;
	pos = 1;
	Repetir
		arreglo[pos] = subcadena(vtexto, 1, 1);
		vtexto = subcadena(vtexto, 2, longitud(vtexto));
		pos = pos + 1;
	Hasta Que vtexto = ""
	escribir "Escriba la letra a buscar en la cadena: " Sin Saltar;
	leer letra;
	vpos = -1;
	Para i = 1 Hasta pos - 1 Con Paso 1 Hacer
		si arreglo[i] = letra Entonces
			vpos = i;
			i = pos;
		FinSi
	Fin Para
	
	escribir "";
	si vpos > -1 Entonces
		escribir "La posición de la letra buscada es: ", vpos;
	SiNo
		escribir "La letra busca no existe en la cadena";
	FinSi
FinFuncion

funcion Comparar_Dos_cadenas_si_son_iguales()
	// comparar 2 cadenas csracter por catacter e indicar si son iguales o no
	//menuCadenaVectores[14] = "14)Dadas dos cadenas indicar si son iguales caracter por caracter"
	dimension arreglo[100];
	Escribir "Escriba primer mensaje: " Sin Saltar;
	leer vtexto;
	pos = 1;
	Repetir
		arreglo[pos] = subcadena(vtexto, 1, 1);
		vtexto = subcadena(vtexto, 2, longitud(vtexto));
		pos = pos + 1;
	Hasta Que vtexto = ""
	
	dimension arreglo2[100];
	Escribir "Escriba segundo mensaje: " Sin Saltar;
	leer vtexto2;
	pos2 = 1;
	Repetir
		arreglo2[pos2] = subcadena(vtexto2, 1, 1);
		vtexto2 = subcadena(vtexto2, 2, longitud(vtexto2));
		pos2 = pos2 + 1;
	Hasta Que vtexto2 = ""
	escribir "";
	si pos = pos2 entonces
		bnd = 1;
		Para i = 1 Hasta pos - 1 Con Paso 1 Hacer
			si arreglo[i] <> arreglo2[i] Entonces
				bnd = 0;
			FinSi
		Fin Para
		si bnd = 1 Entonces
			Escribir "Las cadenas son iguales";
		SiNo
			Escribir "Las cadenas son diferentes";
		FinSi
	SiNo
		Escribir "El tamaño de las cadenas no coinciden, entonces no son iguales";
	FinSi
FinFuncion


funcion cadena_palindroma()
	// una cadena es palaindorma si se lee de la misma forma de izquierda a derecha 
	// ejemplo "ana"
	//menuCadenaVectores[15] = "15)Indicar si una cadena es palindroma"
	dimension arreglo[100];
	dimension arreglo2[100];
	Escribir "Escriba un mensaje: " Sin Saltar;
	leer vtexto;
	pos = 1;
	Repetir
		arreglo[pos] = subcadena(vtexto, 1, 1);
		vtexto = subcadena(vtexto, 2, longitud(vtexto));
		pos = pos + 1;
	Hasta Que vtexto = ""
	    ii = pos - 1;
		arreglo2[i] = arreglo[ii];
		ii = ii - 1;
	bnd = 1;
	Para i = 1 Hasta pos - 1 Con Paso 1 Hacer
		si arreglo2[i] <> arreglo[i] Entonces
			bnd= 0;
		FinSi
	Fin Para
	si bnd = 1 Entonces
		escribir "Las cadenas son palíndromas"	;
	SiNo
		escribir "Las cadenas no son palíndromas";
	FinSi
FinFuncion

// Algoritmo principal
Algoritmo Menu
	Definir pos,resp,limite,dato Como Entero;
	Definir opcion,opc1,opc2,opc3,frase Como Caracter;
	Dimension menuPrincipal[4],menuNumeros[21],menuRazonamiento[11],menuCadenaVectores[16];
    Dimension arreglo[100];
	limite=0;
	// ***** MENU PRINCIPAL ******
	menuPrincipal[1] = "1)EJECICIOS BASICOS";
	menuPrincipal[2] = "2)EJERCICIOS DE RAZONAMIENTO";
	menuPrincipal[3] = "3)EJERCICIOS DE CADENA Y VECTORES";
	menuPrincipal[4] = "4)SALIR";
	
	// ***** EJERCICIOS BASICOS ******
	// dado 2 numeros presentar la suma
	menuNumeros[1] = "1)Sumar dos numeros";
	// dado 2 numeros si el primero es  >= al segundo sumarlo sino restarlo
	menuNumeros[2] = "2)Sumar o restar";
	// ingrese 2 numeros con una operacion matematica("+,-,*,/,%,^") 
	// realizar y presentar la respuesta de la operacion matematica
	menuNumeros[3] = "3)Caculadora";
	// presentar el mayor de 2 numeros ingresados
	menuNumeros[4] = "4)Mayor de dos numeros";
	// presentar el menor de 3 numeros ingresados
	menuNumeros[5] = "5)Mayor de tres numeros";
	// La despensa "El Baraton", a todas las ventas que pasen de $100,
	//se les aplicará un  descuento del 10%, a  todo los demás se les aplicará sólo el 5% 
	// luego del recargo del iva del 12%
	menuNumeros[6] = "6)Comprar productos";
	// Ingresar el nombre,horas trabajadas, valor hora, horas50 y horas100 de sobretiempo
	// se pide calcular el rol del pago del trabajor dado los siguientes calculos.
	// sueldo del trabajador(horasTrajabadas por el valorHora)
	// el sobretiempo=(horas50*1.5+horas100*2)*Valor
	// total ingreos = sueldo+sobretiempo
	// descuento= totalingresos*9.35%
	// liquido= totalingresos - descuento
	menuNumeros[7] = "7)Pago de Sueldos";
	// dada dos notas calcular el promedio y presentar el mensaja "Aproboado" si el promedio
	// mayor 70 y reprobado si es menor que 70
	menuNumeros[8] = "9)Notas de Alumnos";
	// dado un numero indicar si es positivo o negativo
	menuNumeros[9] = "9)Positivo/Negativo";
	// dado un numero indicar si es par o impar
	menuNumeros[10] = "10)Par e Impar";
	// dado dos nmeros indicar si el numero1 es multiplo del numero2
	menuNumeros[11] = "11)Multiplo de cualquier Numero";
	// dada una secuencia de numeros presentar el mayor y el menor de esa esa secuencia
	menuNumeros[12] = "12)El Mayor y Menor de una secuencia de numeros";
	// dada una secuencia de numeros presentar cuantos son numeros positivos
	menuNumeros[13] = "13)Positivos de una secuencia de numeros";
	// dada una serie d enumeros presntar la suma de lo numeros multiplos de 5
	menuNumeros[14] = "14)Suma de los multiplos de cinco de una serie de numeros";
	// presentar los numeros pares desde 2 hasta N
	menuNumeros[15] = "15)Generar y presentar los Numeros pares del 2 a N";
	// dada una serie de numeros presente el numero siempre y cuando sea negativo
	// y antes de finalizar presente la cantidad, la suma y el promedio de dichos numeros negativos
	menuNumeros[16] = "16)Cantidad, Suma y Promedio de numeros negativos de una serie";
	// dado una serie de numeros presentar el promedio de los numeros que sean >= 100 and <=500 
	menuNumeros[17] = "17)Serie promedio de rango de numeros";
	// Ingrese un numero si este es postivo finalice sino vuelva a ingresarlo
	menuNumeros[18] = "18)Validar que un numero sea positivo";
	// dado dos numeros base y exponente. calcular la base elevada al exponente 
	menuNumeros[19] = "19)Base y exponente";
	// dada una serie de numeros calcular los factorles de dichos numero la serie termina
	// cuando un numero de la serie sea igual a cero.
	menuNumeros[20] = "20)Serie Factoriales";
	menuNumeros[21] = "21)Salir";
	
	// ******EJERCICIOS DE RAZONAMIENTO SIN USAR CADENAS Y VECTORES*******
	// contar los digitos de cualquier numero: ej: 342 = 3 digitos
	menuRazonamiento[1] = "1)Cuantos Digitos tiene un Numero";
	// ejemplo: binario= 1100100  ==> 100 (decimal) => 
	menuRazonamiento[2] = "2)Convertir de Base 2 a Base 10";
	// ejemplo: binario= 1111101000  ==> 1000 (decimal) Respuesta = 3E8 (hexadecimal)
	menuRazonamiento[3] = "3)Convertir de Base 2 a Base 16 pasando por Base 10";
	// ejemplo Si n=8 => La serie de fibonacci es = 0 1 1 2 3 5 8 13
	menuRazonamiento[4] = "4)Serie de fibonacci hasta N";
	// ejemplo si numero=10 ==> resp= 1,2,5
	menuRazonamiento[5] = "5)Divisores de un Numero";
	// cuando los divisores de un numero es igual al numero se dice que ese numero es perfecto
	// si numero es 6 los divisores son 1,2,3 sumados igual a 6 es igual al numero ==> es perfecto
	menuRazonamiento[6] = "6)Numero Perfecto";
	// un numero es primo cuando no tiene divisores excepto el 1 y el propio numero
	// ejemplo 5 no tiene divsores es "primo"  9 tiene como divisor al 3 por tanto no es "primo"
	menuRazonamiento[7] = "7)Numero Primo";
	// dos numeros son amigos si la suma de los divisores del primer numero es = a la suma de los
	// divisores del segundo numero Eje: numero=6 (1+2+3)=6 numero 25(1+5)=6 ==> 6=6 son amigos 
	menuRazonamiento[8] = "8)Verificar si dos numeros son Amigos";
	// dos numeros son primos gemelos si ambos numeros son primos en valor absoluto y la resta de
	// los 2 numeros es == 2 eje: 11 y 13 abs(11-13)==2
	menuRazonamiento[9] = "9)Verificar si dos Numeros son Primos Gemelos";
	// por cada numero de una serie verifique si es primo, si es primo contarlo
	menuRazonamiento[10] = "10)De una serie de numeros cuantos son Primos";
	menuRazonamiento[11] = "11)Salir";
	
	// ****** EJERCICIOS DE CADENAS Y VECTORES *******
	// dado n valores ingresarlos a un arreglo
	menuCadenaVectores[1] = "1)llenar un arreglo de numeros";
	// recorrer un arreglo y presentarlo uno por uno
	menuCadenaVectores[2] = "2)Presentar los elementos de un arreglo";
	// buscar el dato y presentar la posicion en que se encuntra el dato en el arreglo
	menuCadenaVectores[3] = "3)Buscar un dato en un arreglo";
	// Presentar el mayor de los datos de un arreglo
	menuCadenaVectores[4] = "4)Elemento Mayor de un arreglo";
	// Dado un arreglo copie los datos en otro de atras para delante 
	menuCadenaVectores[5] = "5)Copiar los datos de un arreglo en otro invertido";
	// Dado los arreglos1 y arreglos 2 sumarlos valor por valor del arreglo1 y arreglo2
	// y asigmarlo en el arreglo3(los tres arreglos deben tener la misma longitud)
	menuCadenaVectores[6] = "6)Dados los arreglos arreglo1[] y arreglo2[] Sumarlos en al arreglo Suma[]";
	// de una serie de numeros solo guardar en un arreglo los nymeros primos
	menuCadenaVectores[7] = "7)Dado N numeros guardar en un arreglo los numeros primos";
	// dadas las notas guardades en un arreglos obtener el promedio de las notas >= 70
	menuCadenaVectores[8] = "8)Dadas los datos de un arreglo obtener el promedio de las notas >=> 70";
	// presentar caracter por caracter de una cadena
	menuCadenaVectores[9] = "9)Dada una cadena presentarla caracter por caracter";
	// presentar  una cadena al reves
	menuCadenaVectores[10] = "10)Dada una cadena presentarla invertida";
	// contar las vocales de jque tiene una cadena cualquiera
	menuCadenaVectores[11] = "11)Dada una cadena indicar cuantos vocales tiene";
	// contar las palabras de una cadena
	menuCadenaVectores[12] = "12)Dada una cadena indicar cuantos palabras tiene";
	// buscar si un caracteer ingresado se encuentra en una cadena si es asi presentarMenu
	// la posicion en que se encuntra ese caracter en la cedena caso contrario presentar -1
	menuCadenaVectores[13] = "13)presentar la posicion de un caracter buscado dentro de una cadena";
	// comparar 2 cadenas csracter por catacter e indicar si son iguales o no
	menuCadenaVectores[14] = "14)Dadas dos cadenas indicar si son iguales caracter por caracter";
	// una cadena es palaindorma si se lee de la misma forma de izquierda a derecha 
	// ejemplo "ana"
	menuCadenaVectores[15] = "15)Indicar si una cadena es palindroma";
	menuCadenaVectores[16] = "16)Salir";
	// cuando se escoja la opcion 4 termina el programa
	opcion='';
	Mientras opcion <> "4" Hacer
		Borrar Pantalla;
		opcion = presentarMenu("********** M E N U   P R I N C I P A L **********",menuPrincipal,4);
		Borrar Pantalla;
		Segun opcion Hacer
			"1":
				opc1="";
				Mientras opc1<>"21" Hacer
					opc1= presentarMenu("********** M E N U  E J E R C I C I O S  B A S I C O S **********",menuNumeros,21);
					Borrar Pantalla;
					Segun opc1 Hacer
						"1":
							Suma2Numeros();
						"2":
							SumarORestar();
						"3":
							// ingrese 2 numeros con una operacion matematica("+,-,*,/,%,^") 
							// realizar y presentar la respuesta de la operacion matematica
							Escribir "Calculadora";
							Escribir "Ingrese Número 1: " Sin Saltar;
							Leer num1;
							Escribir "Ingrese Número 2: " Sin Saltar;
							Leer num2;
							Escribir "Ingrese Operación [+,-,*,/,%,^]: " Sin Saltar;
							Leer ope;
							calculadora(ope, num1, num2);
							Escribir "Espere por favor, Regresando Al Menu...";
							Esperar 2 Segundos;
						"4":
							MayorDe2Numeros();
						"5":
							MayorDe3Numeros();
						"6":
							ComprarProducto;
						"7":
							PagoSueldo();
						"8":
							NotaAlumno();
						"9":
							Verificar_positivo_negativo();
						"10":
							Verificar_par_impar();
						"11":
							Multiplo_cualquier_numero();
						"12":
							// Leer una secuencia de numeros y presentar el mayor con el menor número de esa secuencia
							Escribir "El Mayor y Menor de una secuencia de números";
							SECUENCIA_MAYOR_Y_MENOR();
							escribir "";
							Escribir "Pulse tecla para regresar al Menu...";
							leer tec;
						"13":
							Escribir "Secuencia de números Positivos";
							SECUENCIA_POSITIVOS();
							escribir "";
							Escribir "Pulse tecla para regresar al Menu...";
							leer tec;
						"14":
							Escribir "Secuencia de números con la Suma de Múltiplos de 5";
							SECUENCIA_SUMA_MULTIPLOS5();
							escribir "";
							Escribir "Pulse tecla para regresar al Menu...";
							leer tec;
						"15":
							ESCRIBIR "Secuencia de pares hasta n";
							SECUENCIA_PARES_HASTA_N();
							escribir "";
							Escribir "Pulse tecla para regresar al Menu...";
							leer tec;
						"16":
							ESCRIBIR "PRESENTE SECUENCIA QUE SUME, PROMEDIE SOLO NEGATIVOS";
							SECUENCIA_PRESENTE_SUME_PROMEDIE_NEGATIVOS();
							escribir "";
							Escribir "Pulse tecla para regresar al Menu...";
							leer tec;
						"17":
							ESCRIBIR "PROMEDIO DE SECUENCIA ENTRE 100 Y 500";
							PROMEDIO_SECUENCIA_ENTRE_100_Y_500();
							escribir "";
							Escribir "Pulse tecla para regresar al Menu...";
							leer tec;
						"18":
							ESCRIBIR "VALIDAR SI UN NÚMERO ES POSITIVO";
							VALIDARNUMERO_SEA_POSITIVO();
							escribir "";
							Escribir "Pulse tecla para regresar al Menu...";
							leer tec;
						"19":
							ESCRIBIR "BASE Y EXPONENTE";
							Base_exponente();
							escribir "";
							Escribir "Pulse tecla para regresar al Menu...";
							leer tec;
						"20":
							ESCRIBIR "SERIE DE NÚMEROS Y SUS FACTORIALES";
							serie_factoriales();
							escribir "";
							Escribir "Pulse tecla para regresar al Menu...";
							leer tec;
						"21":
							
							Escribir "Regresando Al Menu Principal...";
							Esperar 1 Segundos;
							
						De Otro Modo:
							Escribir "Opcion Incorrecta";
							Esperar 3 Segundos;
					Fin Segun
				Fin Mientras
			"2":
				opc2="";
				Mientras opc2<>"11" Hacer
					opc2= presentarMenu("********** M E N U  E J E R C I C I O S  D E  RA Z O N A M I E N T O **********",menuRazonamiento,11);
					Borrar Pantalla;
					Segun opc2 Hacer
						"1":
							Escribir "Cantidad de Digitos de un Numero";
							contar_los_digitos;
							Esperar 2 Segundos;
						"2":
							Escribir "Convertir de binario a decimal";
							Binario_a_decimal;
							Esperar 5 segundos;
						"3":
							Escribir "Convertir de binario pasar a decimal y terminar a hexadecimal";
							Binario_a_hexadecimal;
							leer tec;
							Escribir "Pulsar una tecla para continuar";
						"4":
							Escribir "FIBONACCI";
							fibonacci();
							leer tec;
							Escribir "Pulsar una tecla para continuar";
						"5":
							Escribir "Divisores de un número";
							Divisores_de_un_numero();
							leer tec;
							Escribir "Pulsar una tecla para continuar";
						"6":
							Escribir "Número Perfecto";
							numero_perfecto();
							leer tec;
							Escribir "Pulsar  tecla para continuar";
						"7":
							Escribir "Número Primo";
							numeroprimo();
							leer tec;
							Escribir "Pulsar una tecla para continuar";
						"8":
							Escribir "Números amigos";
							numeros_amigos();
							leer tec;
							Escribir "Pulsar una tecla para continuar";
						"9":
							Escribir "Ejercicio Primos Gemelos";
							primos_gemelos();
							leer tec;
							Escribir "Pulsar una tecla para continuar";
						"10":
							Escribir "De una serie cuáles son primos";
							serie_cualesson_primos();
							leer tec;
							Escribir "Pulsar una tecla para continuar";
						"11":
							Escribir "Regresando Al Menu Principal...";
							Esperar 1 Segundos;
							
						De Otro Modo:
							Escribir "Opcion Incorrecta";
							Esperar 3 Segundos;
					Fin Segun
				Fin Mientras
			"3":
				opc3="";
				Mientras opc3<>"16" Hacer
					opc3= presentarMenu("********** M E N U  E J E R C I C I O S  C A D E N A S  Y  V E C T O R E S **********",menuCadenaVectores,16);
					Borrar Pantalla;
					Segun opc3 Hacer
						"1":
							Escribir "Ingresar Valores a un Arreglo";
							llenararreglo();
							leer tec;
							Escribir "Pulsar una tecla para continuar";
						"2":
							Escribir "Presentar los Valores de un Arreglo";
							presentarArreglo();
							Leer tec;
							Escribir "Pulsar una tecla para continuar";
						"3":
							Escribir "Buscar un dato en un Arreglo";
							buscarArreglo();
							Leer tec;
							Escribir "Pulsar una tecla para continuar";
						"4":
							Escribir "Dar el mayor valor en un arreglo";
							Mayor_en_un_arreglo();
							Leer tec;
							Escribir "Pulsar una tecla para continuar";
						"5":
							Escribir "Copiar un arreglo en otro";
							CopiarArreglo();
							Leer tec;
							Escribir "Pulsar una tecla para continuar";
						"6":
							Escribir "Sumar 2 arreglos y ponerlo en el arreglo suma";
							SumarArreglos();
							Leer tec;
							Escribir "Pulsar una tecla para continuar";
						"7":
							Escribir "Guardar Números Primos en un Arreglo";
							ArregloNumerosPrimos();
							Leer tec;
							Escribir "Pulsar una tecla para continuar";
						"8":
							Escribir "Sacar Promedio Mayores a 70 de un Arreglo";
							Arreglo_Promedio_Notas_Mayor_70();
							Leer tec;
							Escribir "Pulsar una tecla para continuar";
						"9":
							Escribir "Arreglo presentar caracter por caracter";
							Arreglo_Presentar_caracter_por_caracter();
							Leer tec;
							Escribir "Pulsar una tecla para continuar";
						"10":
							Escribir "Arreglo presentar invertido";
							cadena_invertida();
							Leer tec;
							Escribir "Pulsar una tecla para continuar";
						"11":
							Escribir "Contar las vocales de una cadena";
							cadena_contar_vocales();
							Leer tec;
							Escribir "Pulsar una tecla para continuar";
						"12":
							Escribir "Contar las consonantes de una cadena";
							cadena_contar_consonantes();
							Leer tec;
							Escribir "Pulsar una tecla para continuar";
						"13":
							Escribir "Buscar caracter en una cadena";
							Buscar_caracter_en_cadena();
							Leer tec;
							Escribir "Pulsar una tecla para continuar";
						"14":
							Escribir "Comparar dos cadenas si son iguales";
							Comparar_Dos_cadenas_si_son_iguales();
							Leer tec;
							Escribir "Pulsar una tecla para continuar";
						"15":
							Escribir "Cadena Palíndroma";
							cadena_palindroma();
							Leer tec;
							Escribir "Pulsar una tecla para continuar";
						"16":
							Escribir "Regresando Al Menu Principal...";
							Esperar 1 Segundos;
							
						De Otro Modo:
							Escribir "Opcion Incorrecta";
							Esperar 3 Segundos;
					Fin Segun
				Fin Mientras
			"4":
				Escribir "El sistema ha sido efectuado correctamente";
			De Otro Modo:
				Escribir "Opcion incorrecta";
		Fin Segun
    Fin Mientras
FinAlgoritmo


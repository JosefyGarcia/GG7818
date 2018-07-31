Algoritmo ejerD
	Definir cantidad,G,nume,num Como Entero
	Definir resp Como Entero
	Definir respuesta Como Caracter
	Escribir 'Digite el numero a buscar'
	Leer num
	resp <- verificando(num)
	
	Si (resp=1) Entonces
		respuesta <- 'Si'
	SiNo
		respuesta <- 'no'
	FinSi
	Escribir 'El numero ',num,' ',respuesta,'  esta en el arreglo'
FinAlgoritmo

Funcion resp <- verificando(num)
	Escribir 'Digite la longitud del arreglo'
	Leer cantidad
	Dimension arreglo[cantidad]
	G <- 1
	// llenando arreglo al azar
	Mientras G<=cantidad Hacer
		nume <- azar(cantidad)
		arreglo[G] <- nume
		// para comprobar los numeros asignados al arreglo 
		Escribir nume
		G <- G+1
	FinMientras
	
	// buscando el numero NUM en el arreglo
	G <- 1
	Mientras G<=cantidad Hacer
		Si (arreglo[G]=num) Entonces
			resp <- 1
		FinSi
		G <- G+1
	FinMientras
FinFuncion


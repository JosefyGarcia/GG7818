Algoritmo ejerE
	Definir cantidad,G,nume,num Como Entero
	Definir resp Como Entero
	Definir respuesta Como Caracter
	Escribir 'Digite el numero a buscar'
	Leer num
	resp <- verificando(num)
	
	Si (resp=0) Entonces
		Escribir 'El numero ',num,' no existe en el arreglo'
	SiNo
		Escribir 'El numero ',num,' Está en la posicion' , resp
	FinSi
	
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
			resp <- G
		FinSi
		G <- G+1
	FinMientras
	
FinFuncion
Algoritmo ejerC
	definir n,m,i,j,multi Como Entero
	definir res Como Real
	i=0;
	escribir "ingrise los limites seguidos de un enter"
	leer n
	leer m
	si n < m Entonces
		i=n;
		j=m;
	SiNo
		si m<n Entonces
			i=m
			j=n
			
		SiNo
			si m=n Entonces
				Escribir "Valores iguales"
			FinSi
	
		FinSi
		
	FinSi

	Mientras i<=j Hacer
		res=i mod 3
		si res = 0
			Imprimir i
		FinSi
		
		i=i+1
	FinMientras

FinAlgoritmo

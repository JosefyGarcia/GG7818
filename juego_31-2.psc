Algoritmo Juego_31
	Dimension A1[12] // Mazo 1
	Dimension A2[12] // Mazo 2
	Dimension A3[12] // Mazo 3
	Dimension A4[12] // Mazo 4
	Dimension Descartadas[4,12] // Cartas ya jugadas
	Dimension Mano_JugadorUno[24]
	Dimension Mano_JugadorPC[24]
	Definir Carta Como Entero // Carta seleccionada
	Definir Suma Como Entero // Suma de mano actual
	Definir indice Como Entero // Indice de la carta 
	Definir indice1 Como Entero // Indice de la carta 
	Definir indice2 Como Entero // Indice de la carta 
	Definir i Como Entero
	Definir j Como Entero
	Definir G Como Entero
	Definir C Como Entero
	Definir cartas Como Entero
	Definir vida Como caracter
	Definir bandera Como Caracter
	Definir Ganador Como Entero
	Definir L Como Entero
	Definir Z Como Entero
	Definir T Como Entero
	Definir PC Como Caracter
	Definir Usuario Como Caracter
	Definir G1, G2,G3 Como Entero
	Definir Salida Como Entero
	Definir  IndiceM Como Caracter
	Z <- 1
	L <- 1
	i <- 1
	j <- 1
	G <- 1
	T <- 1
	G1 <- 0
	G2 <- 0
	G3 <- 0
	Suma <- 0// inicid
	vida <- "si"
	cartas=0;
		
	
	Ganador <- 0
	// Llenando mi arreglo de cartas disponibles sin jugar
	Mientras i<=4 Hacer
		Mientras j<=12 Hacer
			Descartadas[i,j]<-'V'
			// Imprimir i,j
			j <- j+1
		FinMientras
		j <- 1
		i <- i+1
	FinMientras
	// Llenando mi mazo A1
	Mientras G<=12 Hacer
		A1[G] <- G
		G <- G+1
	FinMientras
	G <- 1
	// Llenando mi mazo A2
	Mientras G<=12 Hacer
		A2[G] <- G
		G <- G+1
	FinMientras
	G <- 1
	// Llenando mi mazo A3
	Mientras G<=12 Hacer
		A3[G] <- G
		G <- G+1
	FinMientras
	G <- 1
	// Llenando mi mazo A4
	Mientras G<=12 Hacer
		A4[G] <- G
		G <- G+1
	FinMientras
	G <- 1
	
	
	//Datos de los usuarios
	Escribir "__________________ Bienvenido a JUEGO 31___________________"
	Escribir "Quiero conocerte, por favor dime tu nombre"
	Leer Usuario
	Escribir "Hola " , Usuario , "!! Soy un banquero tan amable que tu mismo puedes elegir como quieres bautizarme"
	Escribir "Por favor escribe mi nombre a continuación"
	Leer PC
	Escribir "Gracias por darme un nombre - INICIEMOS!"
	Escribir " "
	Escribir " "
	
	Repetir
		Suma <-0
		Carta <-0
		Respuesta <- 'Si'
		obligatorias <- 0
		T<-1
		i <- 1
		j <- 1
		G <- 1
		H <- 1
		Mientras G<=24 Hacer
			Mano_JugadorUno[G] <- 0
			Mano_JugadorPC[G] <- 0
			G <- G+1
		FinMientras
		
		
		
		//INICIA EL JUEGO
	Escribir " "
	Escribir "En este momento te repartire tus 3 cartas"
	Escribir '******************************************************************************'
	Escribir " "
	Escribir " "
	
	Repetir
		indice1 <- azar(12)+1
		indice2 <- azar(4)+1
		Repetir
			Si Descartadas[indice2,indice1]='V' Entonces
				obligatorias <- obligatorias+1
				Segun indice2  Hacer
					1:
						Si indice1=1 O indice1=10 O indice1=11 O indice1=12 Entonces
							Segun indice1  Hacer
								1:
									Escribir PC,": ", Usuario, ' Tienes una oportunidad de oro! Escribe si desea que tu carta tome valor de 1 o de 11 '
									Escribir PC,": ", Usuario, ' Si intentas hacer trampa te penalizaré y yo eligiré el valor por ti! '
									Escribir Usuario, ":"
									Leer ValorAs
									
									Segun ValorAs hacer
										1:Carta <- 1 
										11:Carta <-11
										De Otro Modo:
											Escribir PC, ': JAJAJA	Has digitado una cantidad invalida. Perdiste tu oportunidad!... Yo lo eligiré por ti'
											Carta =0
											Repetir
												
												Carta <- azar (11)+1
												
											Hasta Que (Carta = 1) o (Carta = 11) 
											
											
									FinSegun
								10:
									ProceJ(PC)
									Carta <- 10
								11:
									ProceQ(PC)
									Carta <- 10
								12:
									ProceK(PC)
									Carta <- 10
							FinSegun
						SiNo
							Carta <- (indice1)
						FinSi
						Descartadas[1,indice1]<-'F'
						Mano_JugadorUno[T] <- Carta
						cartas=cartas+1
						T <- T+1
						// imprimir Descartadas[1,indice1]
						Suma <- Suma+Carta
						bandera <- 'no'
						IndiceM <-"";
						segun Indice2 hacer
							1: IndiceM <- " Diamantes";
							2: IndiceM <- " Espadas"
							3: IndiceM <- " Corazones"
							4: IndiceM <- " Trebol"	
						FinSegun
						
						
						Si obligatorias>2 Entonces
							Escribir PC, ': Tu carta es: ',Carta ," del mazo de ",IndiceM
							Escribir PC, ': Hasta el momento tu total es de: ',Suma
							Si Suma>=31 Entonces
								Respuesta <- 'No'
							SiNo
								CartaMas(PC) //Proceso de un a carta más
								Escribir Usuario, ":" Sin Saltar
								Leer Respuesta
								si cartas = 48 Entonces
									Respuesta='NO'
								FinSi
							FinSi
						SiNo
							Escribir PC, ': Tu carta es: ',Carta, " del mazo de ", IndiceM
							Escribir PC, ': Hasta el momento tu total es de: ',Suma
							Respuesta <- 'si'
						FinSi
					2:
						Si indice1=1 O indice1=10 O indice1=11 O indice1=12 Entonces
							Segun indice1  Hacer
								1:
									Escribir PC,": ", Usuario, ' Tienes una oportunidad de oro! Escribe si desea que tu carta tome valor de 1 o de 11 '
									Escribir PC,": ", Usuario, ' Si intentas hacer trampa te penalizaré y yo eligiré el valor por ti! '
									Escribir Usuario, ":"
									Leer ValorAs
									
									Segun ValorAs hacer
										1:Carta <- 1 
										11:Carta <-11
										De Otro Modo:
											Escribir PC, ': JAJAJA	Has digitado una cantidad invalida. Perdiste tu oportunidad!... Yo lo eligiré por ti'
											Carta =0
											Repetir
												
												Carta <- azar (11)+1
												
											Hasta Que (Carta = 1) o (Carta = 11) 
											
											
											
									FinSegun
									
								10:
									ProceJ(PC)
									Carta <- 10
								11:
									ProceQ(PC)
									Carta <- 10
								12:
									ProceK(PC)
									Carta <- 10
							FinSegun
						SiNo
							Carta <- (indice1)
						FinSi
						Descartadas[2,indice1]<-'F'
						Mano_JugadorUno[T] <- Carta
						cartas=cartas+1
						T <- T+1
						// imprimir Descartadas[2,indice1]
						Suma <- Suma+Carta
						bandera <- 'no'
						IndiceM <-"";
						segun Indice2 hacer
							1: IndiceM <- "Diamantes";
							2: IndiceM <- "Espadas"
							3: IndiceM <- "Corazones"
							4: IndiceM <- "Trebol"	
						FinSegun
						
						Si obligatorias>2 Entonces
							Escribir PC, ': Tu carta es:',Carta , "del mazo de ", IndiceM
							Escribir PC, ': Hasta el momento tu total es de: ',Suma
							Si Suma>=31 Entonces
								Respuesta <- 'No'
							SiNo
								CartaMas(pc)
								Escribir Usuario, ":" Sin Saltar
								Leer Respuesta
								si cartas = 48 Entonces
									Respuesta='NO'
								FinSi
							FinSi
						SiNo
							Escribir PC, ': Tu carta es: ',Carta, " del mazo de ", IndiceM
							Escribir PC, ': Hasta el momento tu total es de: ',Suma
							Respuesta <- 'si'
						FinSi
					3:
						Si indice1=1 O indice1=10 O indice1=11 O indice1=12 Entonces
							Segun indice1  Hacer
								1:
									Escribir PC,": ", Usuario, ' Tienes una oportunidad de oro! Escribe si desea que tu carta tome valor de 1 o de 11 '
									Escribir PC,": ", Usuario, ' Si intentas hacer trampa te penalizaré y yo eligiré el valor por ti! '
									Escribir Usuario, ":"
									Leer ValorAs
									
									Segun ValorAs hacer
										1:Carta <- 1 
										11:Carta <-11
										De Otro Modo:
											Escribir PC, ': JAJAJA	Has digitado una cantidad invalida. Perdiste tu oportunidad!... Yo lo eligiré por ti'
											Carta =0
											Repetir
												
												Carta <- azar (11)+1
												
											Hasta Que (Carta = 1) o (Carta = 11) 
											
											
											
									FinSegun
								10:
									ProceJ(PC)
									Carta <- 10
								11:
									ProceQ(PC)
									Carta <- 10
								12:
									ProceK(PC)
									Carta <- 10
							FinSegun
						SiNo
							Carta <- (indice1)
						FinSi
						Descartadas[3,indice1]<-'F'
						Mano_JugadorUno[T] <- Carta
						cartas=cartas+1
						T <- T+1
						// imprimir Descartadas[3,indice1]
						Suma <- Suma+Carta
						bandera <- 'no'
						IndiceM <-"";
						segun Indice2 hacer
							1: IndiceM <- "Diamantes";
							2: IndiceM <- "Espadas"
							3: IndiceM <- "Corazones"
							4: IndiceM <- "Trebol"	
						FinSegun
						Si obligatorias>2 Entonces
							Escribir PC, ': Tu carta es: ',Carta , " del mazo de ", IndiceM
							Escribir PC, ': Hasta el momento tu total es de: ',Suma
							Si Suma>=31 Entonces
								Respuesta <- 'No'
							SiNo
								CartaMas(pc)
								Escribir Usuario, ":" Sin Saltar
								Leer Respuesta
								si cartas = 48 Entonces
									Respuesta='NO'
								FinSi
							FinSi
						SiNo
							Escribir PC,': Tu carta es:',Carta, " del mazo de ", IndiceM
							Escribir PC, ': Hasta el momento tu total es de: ',Suma
							Respuesta <- 'si'
						FinSi
					4:
						Si indice1=1 O indice1=10 O indice1=11 O indice1=12 Entonces
							Segun indice1  Hacer
								1:
									Escribir PC,": ", Usuario, ' Tienes una oportunidad de oro! Escribe si desea que tu carta tome valor de 1 o de 11 '
									Escribir PC,": ", Usuario, ' Si intentas hacer trampa te penalizaré y yo eligiré el valor por ti! '
									Escribir Usuario, ":"
									Leer ValorAs
									
									Segun ValorAs hacer
										1:Carta <- 1 
										11:Carta <-11
										De Otro Modo:
											Escribir PC, ': JAJAJA	Has digitado una cantidad invalida. Perdiste tu oportunidad!... Yo lo eligiré por ti'
											Carta =0
											Repetir
												
												Carta <- azar (11)+1
											
											Hasta Que (Carta = 1) o (Carta = 11) 
											
									FinSegun
								10:
									ProceJ(PC)
									Carta <- 10
								11:
									ProceQ(PC)
									Carta <- 10
								12:
									ProceK(PC)
									Carta <- 10
							FinSegun
						SiNo
							Carta <- (indice1)
						FinSi
						Descartadas[4,indice1]<-'F'
						Mano_JugadorUno[T] <- Carta
						cartas=cartas+1
						T <- T+1
						// imprimir Descartadas[4,indice1]
						Suma <- Suma+Carta
						bandera <- 'no'
						IndiceM <-"";
						segun Indice2 hacer
							1: IndiceM <- "Diamantes";
							2: IndiceM <- "Espadas"
							3: IndiceM <- "Corazones"
							4: IndiceM <- "Trebol"	
						FinSegun
						Si obligatorias>2 Entonces
							Escribir PC, ': Tu carta es: ',Carta, "del mazo de ", IndiceM
							Escribir PC, ': Hasta el momento tu total es de: ',Suma
							Si Suma>=31 Entonces
								Respuesta <- 'No'
							SiNo
								CartaMas(pc)
								Escribir Usuario, ":" Sin Saltar
								Leer Respuesta
								si cartas = 48 Entonces
									Respuesta='NO'
								FinSi
							FinSi
						SiNo
							Escribir PC, ': Tu carta es:',Carta, "del mazo de ", IndiceM
							Escribir PC, ': Hasta el momento tu total es de: ',Suma
							Respuesta <- 'si'
						FinSi
				FinSegun
			SiNo
				bandera <- 'no'
			FinSi
		Hasta Que bandera='no'
	Hasta Que (Respuesta='NO') O (Respuesta='No') O (Respuesta='no')
	
	// parte banquero -----------------------------------------------------------------
	
	//inicializando variables
	obligatorias <- 0
	Carta <- 0
	Suma2 <- 0
	Respuesta <- 'Si'
	Repetir
		indice1 <- azar(12)+1
		indice2 <- azar(4)+1
		Repetir
			Si Descartadas[indice2,indice1]='V' Entonces
				obligatorias <- obligatorias+1
				Segun indice2  Hacer
					1:
						Si indice1=1 O indice1=10 O indice1=11 O indice1=12 Entonces
							Segun indice1  Hacer
								1: 
									Carta <-11
								10:
									Carta <- 10
								11:
									Carta <- 10
								12:
									Carta <- 10
							FinSegun
						SiNo
							Carta <- (indice1)
						FinSi
						Descartadas[1,indice1]<-'F'
						Mano_JugadorPC[H] <- Carta
						cartas=cartas+1
						H <- H+1
						Suma2 <- Suma2+Carta
						bandera <- 'no'
						Si obligatorias>2 Entonces
							Si Suma2>=31 Entonces
								
								Respuesta <- 'No'
							SiNo
								Si Suma2<21 Entonces
									Respuesta <- 'No'
								FinSi
							FinSi
						SiNo
							Respuesta <- 'si'
						FinSi
					2:
						Si indice1=1 O indice1=10 O indice1=11 O indice1=12 Entonces
							Segun indice1  Hacer
								1: 
									Carta <-11
								10:
									Carta <-10
								11:
									Carta <- 10
								12:
									Carta <- 10
							FinSegun
						SiNo
							Carta <- (indice1)
						FinSi
						Descartadas[2,indice1]<-'F'
						cartas=cartas+1
						Mano_JugadorPC[H] <- Carta
						H <- H+1
						Suma2 <- Suma2+Carta
						bandera <- 'no'
						Si obligatorias>2 Entonces
							Si Suma2>=31 Entonces
								
								Respuesta <- 'No'
							SiNo
								Si Suma2<21 Entonces
									Respuesta <- 'No'
								FinSi
							FinSi
						SiNo
							Respuesta <- 'si'
						FinSi
					3:
						Si indice1=1 O indice1=10 O indice1=11 O indice1=12 Entonces
							Segun indice1  Hacer
								1: 
									Carta <-11
								10:
									Carta <-10
								11:
									Carta <-10
								12:
									Carta <-10
							FinSegun
						SiNo
							Carta <- (indice1)
						FinSi
						Descartadas[3,indice1]<-'F'
						cartas=cartas+1
						Mano_JugadorPC[H] <- Carta
						H <- H+1
						Suma2 <- Suma2+Carta
						bandera <- 'no'
						Si obligatorias>2 Entonces
							Si Suma2>=31 Entonces
								
								Respuesta <- 'No'
							SiNo
								Si Suma2<21 Entonces
									Respuesta <- 'No'
								FinSi
							FinSi
						SiNo
							Respuesta <- 'si'
						FinSi
					4:
						Si indice1=1 O indice1=10 O indice1=11 O indice1=12 Entonces
							
							Segun indice1  Hacer
								1: 
									Carta <-11
								
								10:
									Carta <-10
								11:
									Carta <-10
								12:
									Carta <-10
							FinSegun
						SiNo
							Carta <- (indice1)
						FinSi
						Descartadas[4,indice1]<-'F'
						cartas=cartas+1
						Mano_JugadorPC[H] <- Carta
						H <- H+1
						Suma2 <- Suma2+Carta
						bandera <- 'no'
						Si obligatorias>2 Entonces
							Si Suma2>=31 Entonces
								
								Respuesta <- 'No'
							SiNo
								Si Suma2<21 Entonces
									Respuesta <- 'No'
								FinSi
							FinSi
						SiNo
							Respuesta <- 'si'
						FinSi
				FinSegun
			SiNo
				bandera <- 'no'
			FinSi
		Hasta Que bandera='no'
	
	Hasta Que (Respuesta='NO') O (Respuesta='No') O (Respuesta='no')
	
	
	

	
	// Seleccionando ganador por puntajes
	
	
	//Imprimir Suma , "  " , Suma2
	Ganador <-0;

	
	
	
	si suma = 31 Entonces
		Ganador = 1
	FinSi
	
	si suma2 = 31 Entonces
		Ganador = 2
	FinSi
	
	
	si suma >31 y suma2>31 Entonces
		Ganador = 4
	FinSi
	
	si suma =31  y suma2 = 31 Entonces
		Ganador = 3
	FinSi
	
	si suma > 31 y suma2 <31 Entonces
		Ganador = 2
	FinSi
	
	Si suma2 >31 y suma < 31 Entonces
		Ganador = 1
	FinSi
	
	si suma < 31 y suma2 <31 Entonces
		si suma<suma2 Entonces
			Ganador = 2
		FinSi
		si suma2<suma Entonces
			Ganador = 1
		FinSi
	FinSi
	

	
	//Determinando accion segun ganador
	
	
	Segun Ganador Hacer
	1:
		L<-1
		Z<-1
			Escribir ""
			Escribir '*********************************RESULTADOS*********************************'
			Escribir PC, ': FELICIDADES! ' , Usuario, ' Eres el ganador con un total de: ',suma , 'Puntos...' , "MIS RESPETOS!";
			Escribir ""
			Escribir '--------------------------------Tus puntajes: ',Usuario, "---------------------------------"
			Mientras L<T Hacer
				
					Escribir Mano_JugadorUno[L],' - ' 
				L <- L+1
			FinMientras
			
			Escribir '-----------------------------Puntajes de: ',PC, '---------------------------'
			Mientras Z<H Hacer
				Escribir Mano_JugadorPC[Z],' - '
				
				Z <- Z+1
			FinMientras
			Escribir pc, ": La suma de mis cartas fue de: ", suma2;
			G1 = G1+1
			Escribir PC, ": Que dices...Nos vamos a la revancha? Si/No";
			Escribir Usuario, ": " Sin Saltar
			Leer vida
	2:
	
		
		L<-1
		Z<-1
			Escribir ""
			Escribir '*********************************RESULTADOS*********************************'
			Escribir PC, ': LO SIENTO! Te he derrotado con un total de: ',suma2, ' Puntos';
			Escribir ""
			Escribir '-----------------------------Puntajes de: ',PC, '---------------------------'
			Mientras Z<H Hacer
				
					Escribir Mano_JugadorPC[Z],' - ' 
				
				Z <- Z+1
			FinMientras
			
			Escribir '--------------------------------Tus Puntajes: ',Usuario, "---------------------------------"
			Mientras L<T Hacer
				
				Escribir Mano_JugadorUno[L],' - ' 
				L <- L+1
			FinMientras
			Escribir PC, ": La suma de tus cartas fue de: ", suma;
			G2 = G2+2
			Escribir PC, ": JA! Te he derrotado. Quieres volver a perder en una nueva partida? Si/No";
			Escribir Usuario, ": " Sin Saltar
			
			Leer vida
			
			
		3: 
			L<-1
			Z<-1
		Escribir ""
		Escribir '*********************************RESULTADOS*********************************'
		Escribir PC,  ': Esto es un EMPATE!! Ambos obtuvierón ',suma2, ' Puntos';
		Escribir ""
		Escribir '-----------------------------Puntajes de: ',PC, '---------------------------'
		Mientras Z<H Hacer
			
			Escribir Mano_JugadorPC[Z],' - ' 
			
			Z <- Z+1
		FinMientras
		
		Escribir '--------------------------------Tus Puntajes: ',Usuario, "---------------------------------"
		Mientras L<T Hacer
			
			Escribir Mano_JugadorUno[L],' - ' 
			L <- L+1
		FinMientras
		G3 = G3+1
		Escribir PC, ": Eres un fuerte competidor, deseas una nueva oportunidad de derrotarme? Si/No";
		
		Escribir Usuario, ": " Sin Saltar
		Leer vida
		
	4: L<-1
		Z<-1
		
		Escribir ""
		Escribir '*********************************RESULTADOS*********************************'
		Escribir PC, ': Que desepcion!!', Usuario, ' Ambos PERDIMOS, Yo tuve: ',suma2, ' Puntos';
		Escribir ""
		Escribir '-----------------------------Puntajes de: ',PC, '---------------------------'
		Mientras Z<H Hacer
			
			Escribir Mano_JugadorPC[Z],' - ' 
			
			Z <- Z+1
		FinMientras
		
		Escribir '--------------------------------Tus Puntajes: ',Usuario, "---------------------------------"
		Mientras L<T Hacer
			
			Escribir Mano_JugadorUno[L],' - ' 
			L <- L+1
		FinMientras
		Escribir PC, ": La suma de tus cartas fue de: ", suma;
		
		Escribir PC, ": Eres un fuerte competidor, deseas una nueva oportunidad de derrotarme? Si/No";
		Escribir Usuario, ":" Sin Saltar
		Leer vida
	
		
FinSegun

Hasta Que (vida = "no") o (vida = "NO") o  (vida = "No")



Escribir " "
Escribir " "
Escribir '*********************************RESUMEN DE PARTIDAS*********************************'
Escribir  "                          Partidas ganadas por " ,Usuario,": ",G1
Escribir " "
Escribir " "
Escribir  "                             Partidas ganadas por ",PC,": ",G2
Escribir " "
Escribir " "
Escribir  "                               Partidas empatadas ",": ", G3
Escribir " "
Escribir " "
si (G1 > G2) Entonces
	Escribir '****************************** HAS GANADO LA GUERRA :( *******************************'
FinSi
SI (G2 > G1) Entonces
	Escribir '********************************* TE HE DERROTADO :) *********************************'
FinSi

SI (G2=G1) Entonces
	Escribir '********************************* EMPATE! :/ *********************************'
FinSi

Leer salida

FinAlgoritmo

//SunProcesos utilizados

SubProceso CartaMas(PC)
	Escribir PC,': Deseas agregar una carta más?'
	
FinSubProceso

SubProceso  ProceJ(PC)

Escribir PC,": ", 'Has sacado una J'
FinSubProceso

SubProceso ProceQ (PC)
	
	Escribir PC,": ", 'Has sacado una Q'
FinSubProceso

SubProceso ProceK(PC)
	
	Escribir PC,": ", 'Has sacado una K'
FinSubProceso



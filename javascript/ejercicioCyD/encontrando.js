var b=document.getElementById("buscar");
b.addEventListener("click",buscarNum);
var resp=false;
function buscarNum()

 {
 var num =document.getElementById("numero");
num = parseInt(numero.value);

var long =document.getElementById("longitud");
long = parseInt(longitud.value);
console.log(num,long);

	var numeros=[long];
	//llenando arreglo
	for(var i = 0; i <= long; i++) {
	numeros[i] = (aleatorio(0,num+10));
	}
	//Buscando numero
	for (var j = 0; j<=long; j++) {
	console.log(numeros[j])
		if(numeros[j]==num) {
			resp=true;
			espacio.innerHTML=("El numero "+num + " se ha encontrado"+ "en la posición:<strong> " +(j+1)+"<strong>");
		}
	}
	
	if(resp==false) {
		espacio.innerHTML=("El numero "+num + " NO se ha encontrado");
	}

 }

 function aleatorio(a,b) {
 return Math.round(Math.random()*(b-a)+parseInt(a));
}

var espacio = document.getElementById("espacio");

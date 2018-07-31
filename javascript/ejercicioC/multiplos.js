alert("Bienvenido, en este programa te ayudaremos a calcular los numeros multiplos de tres que se encuentren en 2 limites");

var b = document.getElementById("calcular");
b.addEventListener("click", calcularMultiplos);

var ini,fin,multi;
var res;


function calcularMultiplos()

 {
 var limi1 =document.getElementById("limite1");
limi1 = parseInt(limite1.value);
console.log(limi1);
var limi2 =document.getElementById("limite2");
limi2 = parseInt(limite2.value);
console.log(limi2);
   
 if(limi1<=limi2){
 	ini=limi1;
 	fin=limi2;
console.log(ini, fin)
 	  } else if(limi2<limi1) {
 	  	ini=limi2;
 	  	fin=limi1;
 	  	console.log(ini, fin)
   }

for(ini; ini<=fin; ini++) {

	res=(ini%3);

   	if (res==0) {
   		resultado.innerHTML += ini+" , ";
   		console.log(ini);
   	}

   }
	limite1.value="";
	limite2.value="";

 }//fin funcion

var resultado = document.getElementById("resultado");

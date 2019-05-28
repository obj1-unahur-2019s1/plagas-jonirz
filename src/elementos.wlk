import plagas.*

class Hogar{
	var property nivelDeMugre = 0
	var property confort = 0
	
	method esBueno(){return  nivelDeMugre<= confort /2}
	method mugre(plaga){nivelDeMugre +=plaga.nivelDeDanio()}
}



class Huerta{
	var property capacidadDeProduccion = 0
	
	method esBueno(){return capacidadDeProduccion > configuracionHuerta.nivelProduccion()}

	method ataque(plaga){capacidadDeProduccion -= plaga.nivelDeDanio() * 10/100
						 if(plaga.tieneEnfermedad()){
						 	capacidadDeProduccion-=10
			 }
	}

}

object configuracionHuerta{
	var property nivelProduccion = 0	
	
}

class Mascota{
	var property nivelDeSalud 
	
	method esBueno(){ return nivelDeSalud > 250}
	
	method ataque(plaga){nivelDeSalud -= plaga.nivelDeDanio()}
	
	
	
}

class Barrio{
	var elementos = []
	
	
	method agregarElemento(elem){elementos.add(elem)}
	
	method agregarTodosElemento(elems){elementos.addAll(elems)}
	
	method elementosBuenos(){return elementos.filter({elemento => elemento.esBueno()})}
	
	method elementosMalos(){return elementos.filter({ elemento => not elemento.esBueno()})}
	
	method esCopado(){return self.elementosBuenos().size() > self.elementosMalos().size()}
	
}



class Hogar{
	var property nivelDeMugre = 0
	var property confort = 0
	
	method esBueno(){return  nivelDeMugre<= confort /2}
}

class Huerta{
	var property capacidadDeProduccion = 0
	
	method esBueno(){return capacidadDeProduccion > configuracionHuerta.nivelProduccion()}
}

object configuracionHuerta{
	var property nivelProduccion = 0	
	
}

class Mascota{
	var property nivelDeSalud 
	
	method esBueno(){ return nivelDeSalud > 250}
}

class Barrio{
	var elementos = []
	
	
	method agregarElemento(elem){elementos.add(elem)}
	
	method agregarTodosElemento(elems){elementos.addAll(elems)}
	
	method elementosBuenos(){return elementos.filter({elemento => elemento.esBueno()})}
	
	method elementosMalos(){return elementos.filter({ elemento => not elemento.esBueno()})}
	
	method esCopado(){return self.elementosBuenos().size() > self.elementosMalos().size()}
	
}



import elementos.*

//Super Clase 
class Plaga{
	var property poblacion
	method transmitirEnfermedad(){return poblacion >= 10}
	method atacar(elemento){poblacion = poblacion + (poblacion * (10/100))}
	method nivelDeDanio(){return poblacion}
}


//Sub clase (herencia)


class Cucarachas inherits Plaga{
	
	var property peso = 0
	
	method tieneEnfermadad(){return poblacion > 10}
	
	override method nivelDeDanio(){return super() / 2 }
	
	/* OBLIGATORIO poner "override" si repito en la subclase un metodo 
	 * que tengo en la superclase
	 */
	override method transmitirEnfermedad(){return super() and peso > 10}
	
	override method atacar(elemento){super(elemento)
									 peso+= 2
	}
}

class Mosquitos inherits Plaga{
	
	
	method tieneEnfermadad(){return poblacion > 10}
	
	override method nivelDeDanio(){return poblacion}
	
	override method transmitirEnfermedad(){return super() and poblacion % 3 == 0}
	
	
}

class Pulgas inherits Plaga{
	
	
	method tieneEnfermadad(){ }
	
	override method nivelDeDanio(){return super() * 2}
	
	override method transmitirEnfermedad(){ return poblacion >= 10  }
	
	
}


/*class Garrapatas{
	var property poblacion
	
	method nivelDeDanio(){return poblacion * 2}
	
	method transmitirEnfermedad(){ }
}*/


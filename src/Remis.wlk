class VehiculoDistinto { 
	
	var property capacidad
	var property velocidadMaxima=0
	var property color
	var property peso
	var property viajes
	
	
}

class ChevroletCorsa inherits VehiculoDistinto {

	
	override method capacidad()= 4
	
	override method velocidadMaxima() = 150
	
	override method peso() = 1300
	
	
}


class Standard inherits VehiculoDistinto {
	
	override method color() = "Gris"
		
	override method capacidad()= 4
	
	override method velocidadMaxima() = 110
	
	override method peso() = 1200
	
	
}

class StandardConTanque inherits Standard {
	
	override method capacidad() = 4
	override method velocidadMaxima() = 120
	override method peso() = super() +	150

	
}


class Trafic inherits VehiculoDistinto {
	
	var property motor 
	var property interior
	override method color() = "blanco"
	
	override method velocidadMaxima() = motor.velocidad()
	
	override method capacidad() = interior.capacidad()
	
	override method peso() = 4000 + motor.peso() + interior.peso()
	
	
}




object interiorComodo {
	method capacidad() =5
	method peso() = 700
	
} 

object interiorPopular {
	
	method capacidad() = 12
	method peso() = 1000
	
}

object motorPulenta {
	
	method velocidad() =130
	method peso() =  800
	
}

object motorBataton {
	
	method velocidad() = 80
	method peso() =  500
	
}
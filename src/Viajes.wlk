class Viaje {
	
	var property kilometros= 0
	var property tiempoMaximoDeViaje =0
	var property cantPasajeros = 0
	var property conjColoresIncompatibles= #{}
	var property autoQueLoHizo
	
	method velocidadPromedio()= kilometros / tiempoMaximoDeViaje
	
	method puedeHacerViaje(auto){return auto.velocidadMaxima() > self.velocidadPromedio() + 10
									and auto.capacidad() >= cantPasajeros
										and not (conjColoresIncompatibles.contains(auto.color()))
	}
	
	method lugaresLibres() {return autoQueLoHizo.capacidad() - cantPasajeros}
	
	
}

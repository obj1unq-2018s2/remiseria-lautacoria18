class Remiseria {
	
	var property autosRegistrados = #{}
	
	var property viajesRegistrados = #{}
	
	var property valorPorKm= 3
	
	var property viajeMinimo=30
	
	method agregarAFlota(vehiculo) { autosRegistrados.add(vehiculo)}
	
	method quitarDeFlota(vehiculo) { autosRegistrados.remove(vehiculo)}
	
	method pesoTotalFlota() {return autosRegistrados.sum{auto => auto.peso()}}
	
	method esRecomendable() {
		return autosRegistrados.size() >= 3 and autosRegistrados.all{auto => auto.velocidadMaxima() >= 100}
	}
	
	
	method autosRecomendados() {return autosRegistrados.filter {auto=> auto.velocidadMaxima() >= 100}}
	
	method capacidadTotalYendoA() {return self.autosRecomendados().sum{ auto => auto.capacidad()}}
	
	method autoMasRapido() {return autosRegistrados.max{auto=> auto.velocidadMaxima()}}
	
	method colorDelMasRapido() {return self.autoMasRapido().color()}
	
	
	method autosQuePuedenViajar(viaje) {return autosRegistrados.filter{auto => viaje.puedeHacerViaje(auto)}}
	
	method registrarViaje(viaje, auto) {viaje.autoQueLoHizo(auto)
										viajesRegistrados.add(viaje)
	}
	
	method cuantosViajes(auto){ return viajesRegistrados.count{viaje => viaje.autoQueLoHizo() == auto}}
	
	method cuantosViajesKm(kms) {return viajesRegistrados.count {viaje => viaje.kilometros() > kms}}
	
	method cuantosLugaresLibres() {return viajesRegistrados.sum {viaje => viaje.lugaresLibres()}}
	
	method cuantosKms(viaje) {return viaje.kilometros()}
	
	method cuantoPagarle(viaje) {return if (self.cuantosKms(viaje) * valorPorKm <= 30) 30
		
											else self.cuantosKms(viaje) * valorPorKm
	}
}

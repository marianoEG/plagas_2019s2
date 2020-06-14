import plagas.*
class Hogar{
	var property nivelMugre
	var property nivelConfort
	method esBueno(){return nivelConfort/2 >= nivelMugre}
	method sufrirAtaque(plaga){nivelMugre += plaga.nivelDeDanio()}
}

class Huerta{
	var property capacidadProduccion
	var property nivelHuerta
	method esBueno(){return capacidadProduccion > nivelHuerta}
	method sufrirAtaque(plaga){
		capacidadProduccion = capacidadProduccion - plaga.nivelDeDanio()*0.1
		if (plaga.puedeTransmitir()){ capacidadProduccion -= 10}
	}
}

class Mascota{
	var property nivelSalud
	method esBueno(){return nivelSalud > 250}
	method sufrirAtaque(plaga){
		if (plaga.puedeTransmitir()){ nivelSalud -= plaga.nivelDeDanio()}
	}
}

class Barrio{
	var property elementos = []
	method esCopado(){
		return elementos.count({e=>e.esBueno()}) > elementos.count({e=>not e.esBueno()})
	}
}
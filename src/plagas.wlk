import elementos.*
class Plaga {
	var property poblacion
	method nivelDeDanio(){return poblacion}
	method puedeTransmitir(){return poblacion > 10}
	method efectoAtaque(){poblacion = poblacion * 1.1}
	method atacar(elemento){ elemento.sufrirAtaque(self) self.efectoAtaque() }
}
class Cucaracha inherits Plaga{
	var property pesoPromedio
	override method nivelDeDanio(){return super() / 2}
	override method puedeTransmitir(){return super() and pesoPromedio >= 10}
	override method efectoAtaque(){super() pesoPromedio+=2}	
}
class Pulga inherits Plaga{
	override method nivelDeDanio(){return super() * 2}
}
class Garrapata inherits Pulga{
	override method efectoAtaque(){poblacion = poblacion * 1.2}
} 
class Mosquito inherits Plaga{
	override method puedeTransmitir(){return super() and poblacion % 3 == 0}
}

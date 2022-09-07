object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = 0.max(peso * 0.8 - 1 )}
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	var peso = 300
	
	method precio() { return 12 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 }
	method gusto() { return "chocolate" }
	method libreGluten() { return false}
}

object caramelo {
	var peso = 5
	
	method precio() { return 1}
	method peso() { return peso }
	method mordisco() { peso = peso - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object chupetin {
	var peso = 7
	
	method precio() { return 2 }
	method peso() { return peso }
	method mordisco() { 
		if (peso>2)    {peso = peso * 0.9}
		
		
	method gusto() { return "naranja" }
	method libreGluten() { return true }
}

object oblea {
	var peso = 250
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() {if (peso>70)    {peso = peso * 0.9}
		else {peso = peso * 0.75}
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object chocolatin {
	var pesoInicial
	var pesoActual
	

	method precio() { return 0.5 * pesoInicial }
	method peso() { return pesoActual }
	method mordisco() {if (peso>70)    {peso = peso * 0.5}
		else {peso = peso * 0.75}}
	method gusto() { return "chocolate" }
	method libreGluten() { return false}
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() { return golosinaInterior.precio() + 2 }
	method peso() { return golosinaInterior.peso() + 4}
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreDeGluten() { /* completar */}	
}

object tuttifrutti {
	var pesoInicial = 5
	var property libreDeGluten
	var cantMordiscos
	const gustos = ["frutilla", "chocolate", "naranja"]
	
	method precio() {
	  if (self.libreDeGluten())
	  { return 7}
	  else {return 10}
	  }
	method peso() { return peso }
	method mordisco() { cantMordiscos }
	method gusto(){return 
	}	
	method libreDeGluten(){ return libreDeGluten }
	method setGluten(condicion) { libreDeGluten = condicion}
}
	
	
	}
}


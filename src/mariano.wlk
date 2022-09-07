import golosinas.*
object mariano {
	var golosinas = []
	var golosinasDesechadas = []
	
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	
	method comprar(golosina) { golosinas.add(golosina)}
	method comprarVarias(lista){ golosinas.addAll(lista)}
	method vaciasBolsa() {golosinas.clear()}
	method desechar(unaGolosina){golosinas.remove(unaGolosina)
		golosinasDesechadas.add()
	}
		  
	method cantidadDegolosinas() 
		{return golosina.size()}
	method tieneLaGolosina(unaGolosina) 
		{return golosinas.contains(unaGolosina)}	
	
	method probarGolosinas() { golosina.forEach({g => g.mordisco()})}
	method hayGolosinasSinTACC() {return 
		golosinas.any({g => g.libreDeGluten()})}
		
	method preciosCuidados() {
		return golosinas.all{g => g.precio() <= 10}
	}
	method golosinaDeSabor(unSabor) {return
		golosinas.find({g => g.gusto() == unSabor})
	}
	method golosinasDeSabor(unSabor){return
		golosinas.filter({g => g.gusto() == unSabor})
	}
	method sabores(){ return
		golosinas.map({g => g.gusto()}).asSet()
	}
	method golosinaMasCara(){return 
		golosinas.max({g => g.precio() })
	}
	method precioGolosinaMasCara(){return
		 self.golosinaMasCara().precio()
	}
	method pesoGolosina() {return
		golosina.sum({g => g.peso()})
	}
	method golosinasFaltantes(golosinasDeseadas){return
		 golosinasDeseadas.asSet().diference(golosinas.asSet())
	}
	method gustosFaltantes(gustosDeseados){return
		 gustosDeseados.asSet().diference(self.sabores())
	}
	method gastoEn(sabor){return
		 self.golosinasDeSabor().sum({g => g.precio()})
	}
	method precioGolosinaMasCaraDeUnSabor(unSabor){ return
		self.golosinasDeSabor(unSabor).max({g => g.precio()}.precio())		
	}
	method cantGolosinasDeUnSabor(unSabor){ return
		self.golosinasDeSabor(unSabor).size()
	}
	method saborMasPopular(){return
		self.sabores().max({sabor => self.cantGolosinasDeSabor(sabor)})
	}
	method comproYDesecho(){ return
		golosinasDesechadas.contains(golosina)
	}
}


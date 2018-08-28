import clientes.*
object roxana {
	method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms
	}
}

object gabriela { 
	method precioViaje(cliente, kms) {
		return cliente.precioPactadoPorKm() * kms * 1.2
	}
}

object mariela {
	method precioViaje(cliente,kms) { 
		return 50.max(cliente.precioPactadoPorKm() * kms) 
	}
}

object juana { 
	method precioViaje(cliente,kms) {
		if (kms <= 8) { return 100}
		else {return 200}
	}
}

object lucia { 
	var paraQuien
	method reemplazo(chofer) {paraQuien = chofer }
	
	method precioViaje(cliente,kms){
		return paraQuien.precioViaje(cliente,kms) 
	}
}
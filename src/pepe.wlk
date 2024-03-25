object pepe {
	var categoria = cadete
	var neto = 0
	var bonoResultado = 0
	var faltas = 0
	var bonoPresentismo = 0
	method sueldo(){
		return neto + bonoResultado + bonoPresentismo
	}
	method categoria(categoria_){
		categoria = categoria_
		neto = categoria_.neto()
	}
	method neto(){
		return neto
	}
	method bonoResultado(tipo){
		bonoResultado = tipo.bono(self)
	}
	method presentismo(tipo){
		bonoPresentismo = tipo.bono(self.faltas(),self.neto())
	}
	method sumarFaltas(falta){
		faltas = faltas + falta
	}
	method faltas(){
		return faltas
	}
}

object gerente{
	const neto = 15000
	method neto(){
		return(neto)
	}
}
object cadete{
	const neto = 20000
	method neto(){
		return(neto)
	}
}
//bono resultado
object porcentaje{
	method bono(empleado){
		return empleado.neto() * 0.10
	}
}
object fijo{
	method bono(empleado){
		return 800
	}
}
object resultadoNulo{
	method bono(empleado){
		return 0
	}
}
//bono presentismo
object normal{
	method bono(faltas,neto){
		return if(faltas==0){
			2000
		}
		else if(faltas==1){
			1000
		}
		else 0
	}
}
object ajuste{
	method bono(faltas,neto){
		return if(faltas==0){
			100
		}else 0
	}
}
object demagogico{
	method bono(faltas,neto){
		return if(neto<18000){
			500
		}else{
			300
		}
	}
}
object presentismoNulo{
	method bono(faltas,neto){
		return (0)
	}
}
//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Velocidades : Int{
    
    case
    Apagado = 0,
    VelocidadBaja = 20,
    VelocidadMedia = 50,
    VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
}

class Auto{
    
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        let _actual : Int = velocidad.rawValue
        var _velocidadEnCadena : String?
        
        if velocidad == Velocidades.VelocidadAlta {
            _velocidadEnCadena =  "Velocidad Alta"
            velocidad = Velocidades.VelocidadMedia
        }
        else if velocidad == Velocidades.VelocidadMedia {
            _velocidadEnCadena =  "Velocidad Media"
            velocidad = Velocidades.VelocidadAlta
        }
        else if velocidad == Velocidades.VelocidadBaja {
            _velocidadEnCadena =  "Velocidad Baja"
            velocidad = Velocidades.VelocidadMedia
        }
        else if velocidad == Velocidades.Apagado {
            _velocidadEnCadena =  "Apagado"
            velocidad = Velocidades.VelocidadBaja
        }
        return (_actual, _velocidadEnCadena!)
    }
    
}

var _auto = Auto()
for var i = 1; i<=20; ++i {
    let velocidad = _auto.cambioDeVelocidad()
    print("\(velocidad.0), \(velocidad.1)")
}

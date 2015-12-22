//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}


class Auto {
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String){
        var mensaje : String = ""
        var vel : Int
        switch(velocidad){
        case .Apagado:
            vel = velocidad.rawValue
            mensaje = "Apagado"
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja:
            vel = velocidad.rawValue
            mensaje = "Velocidad Baja"
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia:
            vel = velocidad.rawValue
            mensaje = "Velocidad Media"
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta:
            vel = velocidad.rawValue
            mensaje = "Velocidad Alta"
            self.velocidad = .VelocidadMedia
        }
        
        return (vel,mensaje)
    }
}

var auto: Auto = Auto()
var vel : Int
var mensaje : String
for n in 0...19{
    (vel, mensaje) = auto.cambioDeVelocidad()
    print("\(n).\t\(vel), \(mensaje)")
}
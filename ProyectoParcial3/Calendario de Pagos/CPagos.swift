//
//  CPagos.swift
//  ProyectoParcial3
//
//  Created by Azalia on 18/11/22.
//

import UIKit

class CPagos {
    var asunto: String
    var fecha: String
    
    init(asunto: String, fecha: String){
        self.asunto = asunto
        self.fecha = fecha
    }
    
    static func fetchCPagos() -> [CPagos] {
        return [
            CPagos(asunto: "1era Inscripción", fecha: "10 Agosto"),
            CPagos(asunto: "2do Semestre", fecha: "16 Septiembre"),
            CPagos(asunto: "3er Semestre", fecha: "17 Octubre"),
            CPagos(asunto: "4to Semestre", fecha: "22 Noviembre"),
            CPagos(asunto: "5to Semestre", fecha: "5 Diciembre"),
            
        ]
    }
}

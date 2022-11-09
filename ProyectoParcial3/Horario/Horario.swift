//
//  Horario.swift
//  ProyectoParcial3
//
//  Created by Azalia on 08/11/22.
//

import UIKit

class Horario {
    var lun: String
    var mar: String
    var mie: String
    var jue: String
    var vie: String
    
    init(lun: String, mar: String, mie: String, jue: String, vie: String) {
        self.lun = lun
        self.mar = mar
        self.mie = mie
        self.jue = jue
        self.vie = vie
    }
    
    static func fetchHorario() -> [Horario] {
        return [
            Horario(lun: "", mar: "", mie: "x", jue: "", vie: ""),
            Horario(lun: "x", mar: "", mie: "x", jue: "", vie: ""),
            Horario(lun: "", mar: "", mie: "", jue: "", vie: ""),
            Horario(lun: "", mar: "x", mie: "", jue: "", vie: ""),
            Horario(lun: "", mar: "x", mie: "", jue: "", vie: ""),
            Horario(lun: "", mar: "x", mie: "", jue: "", vie: ""),
            Horario(lun: "x", mar: "", mie: "", jue: "", vie: ""),
            Horario(lun: "x", mar: "", mie: "", jue: "", vie: ""),
            Horario(lun: "", mar: "", mie: "x", jue: "", vie: ""),
            Horario(lun: "", mar: "", mie: "x", jue: "", vie: ""),
            Horario(lun: "", mar: "x", mie: "", jue: "", vie: ""),
            Horario(lun: "", mar: "", mie: "", jue: "", vie: "x"),
            Horario(lun: "", mar: "", mie: "x", jue: "", vie: "x"),
            Horario(lun: "", mar: "", mie: "", jue: "", vie: ""),
            Horario(lun: "", mar: "", mie: "", jue: "", vie: ""),
        ]
    }
}

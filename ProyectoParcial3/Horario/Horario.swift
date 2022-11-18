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
            Horario(lun: "", mar: "", mie: "DIO", jue: "", vie: ""),
            Horario(lun: "ANM", mar: "", mie: "DIS", jue: "", vie: ""),
            Horario(lun: "", mar: "", mie: "", jue: "", vie: ""),
            Horario(lun: "", mar: "EST", mie: "", jue: "", vie: ""),
            Horario(lun: "", mar: "DIS", mie: "", jue: "", vie: ""),
            Horario(lun: "", mar: "DIS", mie: "", jue: "", vie: ""),
            Horario(lun: "PRG", mar: "", mie: "", jue: "", vie: ""),
            Horario(lun: "PRG", mar: "", mie: "", jue: "", vie: ""),
            Horario(lun: "", mar: "", mie: "FTO", jue: "", vie: ""),
            Horario(lun: "", mar: "", mie: "FTO", jue: "", vie: ""),
            Horario(lun: "", mar: "FTO", mie: "", jue: "", vie: ""),
            Horario(lun: "", mar: "", mie: "", jue: "", vie: "FIS"),
            Horario(lun: "", mar: "", mie: "FIS", jue: "", vie: "FIS"),
            Horario(lun: "", mar: "", mie: "", jue: "", vie: ""),
            Horario(lun: "", mar: "", mie: "", jue: "", vie: ""),
        ]
    }
}

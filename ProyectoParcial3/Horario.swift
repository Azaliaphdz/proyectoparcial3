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
            Horario(lun: "sda", mar: "fda", mie: "dcf", jue: "", vie: "as"),
            Horario(lun: "", mar: "dfs", mie: "dcf", jue: "", vie: ""),
            Horario(lun: "", mar: "fda", mie: "", jue: "aas", vie: "as"),
            Horario(lun: "sda", mar: "se", mie: "21", jue: "aas", vie: "as"),
            Horario(lun: "32", mar: "", mie: "dcf", jue: "", vie: "as"),
        ]
    }
}

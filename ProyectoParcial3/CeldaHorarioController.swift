//
//  CeldaHorarioController.swift
//  ProyectoParcial3
//
//  Created by Azalia on 08/11/22.
//

import UIKit

class CeldaHorarioController: UITableViewCell {
    
    @IBOutlet weak var tiempo: UILabel!
    @IBOutlet weak var lun: UILabel!
    @IBOutlet weak var mar: UILabel!
    @IBOutlet weak var mie: UILabel!
    @IBOutlet weak var juev: UILabel!
    @IBOutlet weak var vie: UILabel!
    
    
    var horario: Horario? {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI() {
        if let horario = horario {
            lun.text = horario.lun
            mar.text = horario.mar
            mie.text = horario.mie
            juev.text = horario.jue
            vie.text = horario.vie
        } else {

            lun.text = nil
            mar.text = nil
            mie.text = nil
            juev.text = nil
            vie.text = nil
        }
    }
}

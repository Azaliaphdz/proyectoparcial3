//
//  CeldaHorarioController.swift
//  ProyectoParcial3
//
//  Created by Azalia on 08/11/22.
//

import UIKit

class CeldaHorarioController: UITableViewCell {
    
    @IBOutlet weak var lblTiempo: UILabel!
    @IBOutlet weak var lblLun: UILabel!
    @IBOutlet weak var lblMar: UILabel!
    @IBOutlet weak var lblMie: UILabel!
    @IBOutlet weak var lblJue: UILabel!
    @IBOutlet weak var lblVie: UILabel!
    
    
    var horario: Horario? {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI() {
        if let horario = horario {
            lblLun.text = horario.lun
            lblMar.text = horario.mar
            lblMie.text = horario.mie
            lblJue.text = horario.jue
            lblVie.text = horario.vie
        } else {

            lblLun.text = nil
            lblMar.text = nil
            lblMie.text = nil
            lblJue.text = nil
            lblVie.text = nil
        }
    }
}

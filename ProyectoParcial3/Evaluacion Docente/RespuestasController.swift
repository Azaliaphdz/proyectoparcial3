//
//  RespuestasController.swift
//  ProyectoParcial3
//
//  Created by Azalia on 10/11/22.
//

import UIKit

class RespuestasController: UIViewController {
    
    @IBOutlet weak var lblEv1: UILabel!
    @IBOutlet weak var lblEv2: UILabel!
    @IBOutlet weak var lblEv3: UILabel!
    @IBOutlet weak var lblEv4: UILabel!
    @IBOutlet weak var lblEv5: UILabel!
    @IBOutlet weak var lblEv6: UILabel!
    @IBOutlet weak var lblComentario: UILabel!
    
    var evaluacion: String?
    var evaluacion2: String?
    var evaluacion3: String?
    var evaluacion4: String?
    var evaluacion5: String?
    var evaluacion6: String?
    var evaluacion7: String?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        if let destino = evaluacion {
            lblEv1.text = destino
        }
        if let destino2 = evaluacion2 {
            lblEv2.text = destino2
        }
        if let destino3 = evaluacion3 {
            lblEv3.text = destino3
        }
        if let destino4 = evaluacion4 {
            lblEv4.text = destino4
        }
        if let destino5 = evaluacion5 {
            lblEv5.text = destino5
        }
        if let destino6 = evaluacion6 {
            lblEv6.text = destino6
        }
        if let destino7 = evaluacion7 {
            lblComentario.text = destino7
        }
        
    }
    
}

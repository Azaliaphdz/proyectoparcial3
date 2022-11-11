//
//  RespuestasController.swift
//  ProyectoParcial3
//
//  Created by Azalia on 10/11/22.
//

import UIKit

class RespuestasController: UIViewController {
    
    @IBOutlet weak var lblEv1: UILabel!
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        lblEv1.text = EvaluacionController.evaluacion?
    }
    
    
}

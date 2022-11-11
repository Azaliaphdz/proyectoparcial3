//
//  EvaluacionController.swift
//  ProyectoParcial3
//
//  Created by Azalia on 10/11/22.
//

import UIKit

class EvaluacionController: UIViewController {
    @IBOutlet weak var scEvaluacion1: UISegmentedControl!
    
    @IBOutlet weak var lblEv1: UILabel!

    
    var evaluacion : String?
    
    func back() {
        evaluacion = scEvaluacion1.titleForSegment(at: scEvaluacion1.selectedSegmentIndex)
        
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        lblEv1.text = ("Value: \(evaluacion)")
    }
    
    
}

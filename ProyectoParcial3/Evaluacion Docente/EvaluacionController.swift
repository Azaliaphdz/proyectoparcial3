//
//  EvaluacionController.swift
//  ProyectoParcial3
//
//  Created by Azalia on 10/11/22.
//

import UIKit

class EvaluacionController: UIViewController {
    @IBOutlet weak var scEvaluacion1: UISegmentedControl!
        
    var ev1 : String?
    
    func back() {
        ev1 = scEvaluacion1.titleForSegment(at: scEvaluacion1.selectedSegmentIndex)
        
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        back()
    }
    
   /* @IBAction func doTapEnviar(_ sender: Any) {
        let destino = segue.destination as! ResultadoController
        destino.contacto = contactos[tvContactos.indexPathForSelectedRow!.row]
    }*/
    
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "toGoRespuestas" {
           let destino = segue.destination as! RespuestasController
           destino.
           
       }
   }
    
    
}

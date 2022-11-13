//
//  EvaluacionDocenteController.swift
//  ProyectoParcial3
//
//  Created by Azalia on 11/11/22.
//

import UIKit

class EvaluacionDocenteController: UIViewController {
    @IBOutlet weak var scEvaluacion1: UISegmentedControl!
    @IBOutlet weak var scEvaluacion2: UISegmentedControl!
    @IBOutlet weak var scEvaluacion3: UISegmentedControl!
    @IBOutlet weak var scEvaluacion4: UISegmentedControl!
    @IBOutlet weak var scEvaluacion5: UISegmentedControl!
    @IBOutlet weak var scEvaluacion6: UISegmentedControl!
    @IBOutlet weak var txtComentario: UITextField!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToRespuestas" {
            let destino = segue.destination as! RespuestasController
            if let evaluacion = scEvaluacion1.titleForSegment(at: scEvaluacion1.selectedSegmentIndex) {
                destino.evaluacion = evaluacion
            }
            let destino2 = segue.destination as! RespuestasController
            if let evaluacion2 = scEvaluacion2.titleForSegment(at: scEvaluacion2.selectedSegmentIndex) {
                destino2.evaluacion2 = evaluacion2
            }
            let destino3 = segue.destination as! RespuestasController
            if let evaluacion3 = scEvaluacion3.titleForSegment(at: scEvaluacion3.selectedSegmentIndex) {
                destino3.evaluacion3 = evaluacion3
            }
            let destino4 = segue.destination as! RespuestasController
            if let evaluacion4 = scEvaluacion4.titleForSegment(at: scEvaluacion4.selectedSegmentIndex) {
                destino4.evaluacion4 = evaluacion4
            }
            let destino5 = segue.destination as! RespuestasController
            if let evaluacion5 = scEvaluacion5.titleForSegment(at: scEvaluacion5.selectedSegmentIndex) {
                destino5.evaluacion5 = evaluacion5
            }
            let destino6 = segue.destination as! RespuestasController
            if let evaluacion6 = scEvaluacion6.titleForSegment(at: scEvaluacion6.selectedSegmentIndex) {
                destino6.evaluacion6 = evaluacion6
            }
            let destino7 = segue.destination as! RespuestasController
            if let evaluacion7 = txtComentario.text {
                destino7.evaluacion7 = evaluacion7
            }
        }
        
    }
}

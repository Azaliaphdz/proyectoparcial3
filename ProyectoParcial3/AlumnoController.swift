//
//  AlumnoController.swift
//  ProyectoParcial3
//
//  Created by Azalia on 06/11/22.
//

import UIKit

class AlumnosController: UIViewController {
    var alumnos : [Alumno] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alumnos.append(Alumno(nombre: "Azalia"))
    }
}

//
//  ViewController.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 04/11/22.
//

import UIKit

class MateriasController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var materias : [Materia]?
    
    @IBOutlet weak var tvMateria: UITableView!
    //var checked = false
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias!.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 91
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMateria") as! CeldaMateriaController
                    celda.lblMateria.text = materias![indexPath.row].materia
                    celda.lblHorario.text = materias![indexPath.row].horario
                    celda.imgImagen.image = UIImage(named: materias![indexPath.row].imagen)
                    celda.imgImagen.layer.cornerRadius = 20
                    celda.imgImagen.clipsToBounds = true
        
        
                return celda
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "actualizarMateria" {
           let destino = segue.destination as! DetallesMateria
            destino.materia = materias![tvMateria.indexPathForSelectedRow!.row]
            destino.callBackActualizarAsistencia = actualizarAsistencia
            }
        
        }
    
    func actualizarAsistencia (materia: Materia) {
        tvMateria.reloadData()
            
        }
        


}


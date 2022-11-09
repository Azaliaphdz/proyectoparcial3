//
//  HorarioController.swift
//  ProyectoParcial3
//
//  Created by Azalia on 08/11/22.
//

import UIKit

class HorarioController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var horas = [Int]()

    var horario = Horario.fetchHorario()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        initTime()
    
    }
    
    func initTime()
    {
        for hora in 7...21
        {
            horas.append(hora)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 58
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horas.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaHorario") as! CeldaHorarioController
        let hora  = horas[indexPath.row]
        
        celda.lblTiempo.text = formatHour(hora: hora)
        
        celda.lblLun.text = horario[indexPath.row].lun
        celda.lblMar.text = horario[indexPath.row].mar
        celda.lblMie.text = horario[indexPath.row].mie
        celda.lblJue.text = horario[indexPath.row].jue
        celda.lblVie.text = horario[indexPath.row].vie
        
        return celda
    }
    
    func formatHour(hora: Int) -> String
    {
        return String(format: "%02d:%02d", hora, 0)
    }
    
    

    
    
}

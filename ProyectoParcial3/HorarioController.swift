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
        //horario.append(Horario(lun: "sda", mar: "fda", mie: "dcf", jue: "", vie: "as"))
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
        return 71
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
        
        celda.tiempo.text = formatHour(hora: hora)
        
        celda.horario = Horario[indexPath.item]
        
        //celda.lun.text = horario[indexPath.row].lun
        //celda.mar.text = horarios[indexPath.row].mar
        //celda.mie.text = horarios[indexPath.row].mie
        //celda.juev.text = horarios[indexPath.row].jue
        //celda.vie.text = horarios[indexPath.row].vie
        
        return celda
    }
    
    func formatHour(hora: Int) -> String
    {
        return String(format: "%02d:%02d", hora, 0)
    }
    
    

    
    
}

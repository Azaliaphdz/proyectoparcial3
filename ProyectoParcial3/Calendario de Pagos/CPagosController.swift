//
//  CPagosController.swift
//  ProyectoParcial3
//
//  Created by Azalia on 18/11/22.
//

import UIKit

class CPagosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var calendariopagos = CPagos.fetchCPagos()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
    
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 79
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return calendariopagos.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCPagos") as! CeldaCPagosController
    
        
        celda.lblAsunto.text = calendariopagos[indexPath.row].asunto
        celda.lblFecha.text = calendariopagos[indexPath.row].fecha
        
        return celda
    }
       
    
}


//
//  ContactosController.swift
//  ProyectoParcial3
//
//  Created by Azalia on 06/11/22.
//

import UIKit

class ContactosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var contactos : [Contacto] = []
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
           return 1
       }
       
       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 84
       }
       
       func numberOfSections(in tableView: UITableView) -> Int {
           return 1
       }
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return contactos.count
       }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as! CeldaContactoController
        celda.lblNombre.text = contactos[indexPath.row].nombre
        celda.lblCel.text = contactos[indexPath.row].cel
        celda.lblCorreo.text = contactos[indexPath.row].correo
        celda.imgFondoC.image = UIImage(named: contactos[indexPath.row].fondoC)
        celda.imgFotoC.image = UIImage(named: contactos[indexPath.row].fotoC)
        return celda
    }
    
    @IBOutlet weak var tvContactos: UITableView!
    
    @IBOutlet weak var imgFondoPerfil: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvContactos.backgroundColor = .clear
        
        imgFondoPerfil.layer.cornerRadius = 1.0
        imgFondoPerfil.layer.shadowRadius = 10.0
        imgFondoPerfil.layer.shadowOpacity = 0.4
        imgFondoPerfil.layer.shadowOffset = CGSize(width: 5, height: 10)
        imgFondoPerfil.clipsToBounds = false
        
        contactos.append(Contacto(nombre: "Marcela Hernández Delgado", cel: "6441172430", correo: "azalia0207@gmail.com", fondoC: "Morado", fotoC: "Contacto1"))
        contactos.append(Contacto(nombre: "Abisaid Manuel Peña Valdez", cel: "6441545187", correo: "abis_play99@gmail.com", fondoC: "Verde", fotoC: "Contacto2"))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let destino = segue.destination as! ActualizarController
         destino.contacto = contactos[tvContactos.indexPathForSelectedRow!.row]
         destino.callBackActualizar = actualizarContacto

     }
    
    func nuevoContacto(contacto : Contacto) {
        contactos.append(contacto)
        tvContactos.reloadData()
    }
    
    func actualizarContacto(){
        tvContactos.reloadData()
    }
}

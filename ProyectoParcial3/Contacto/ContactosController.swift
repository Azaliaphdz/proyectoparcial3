//
//  ContactosController.swift
//  ProyectoParcial3
//
//  Created by Azalia on 06/11/22.
//

import UIKit

class ContactosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var contactos : [Contacto]?
    var pagados: [Pagado] = []
    
    var alumno: Alumno? = Alumno(nombre: "Azalia", matricula: "199229", carrera: "Ing. Producción Multimedia", direccion: "California #1903 sur", cel: "6441545187", correo: "azaliaphdz@hotmail.com")
    
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblMatricula: UILabel!
    @IBOutlet weak var lblCarrera: UILabel!
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var lblCel: UILabel!
    @IBOutlet weak var lblCorreo: UILabel!
       
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
           return 1
       }
       
       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           if tableView == tvContactos{
               return 86
           }else {
               return 41
           }
       }
       
       func numberOfSections(in tableView: UITableView) -> Int {
           return 1
           
       }
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           if tableView == tvContactos{
               return contactos!.count
           }
           return pagados.count
       }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tvContactos{
                let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as! CeldaContactoController
            
            //celda.contentView.backgroundColor = UIColor(red: 226/255, green: 217/255, blue: 250/255, alpha: 1)
            
            //celda.viewFondo.backgroundColor = .clear
            //celda.contentView.backgroundColor = UIColor(white: 1, alpha: 0.2)
            celda.viewFondo.layer.cornerRadius = celda.viewFondo.frame.height / 8
            
            celda.lblNombre.text = contactos![indexPath.row].nombre
            celda.lblCel.text = contactos![indexPath.row].cel
            celda.lblParentesco.text = contactos![indexPath.row].parentesco
            celda.imgFondoC.image = UIImage(named: contactos![indexPath.row].fondoC)
            celda.imgFotoC.image = UIImage(named: contactos![indexPath.row].fotoC)
            
            return celda
            
        } else {
            let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPagado") as! CeldaPagadoController
            celda.lblEstado.text = pagados[indexPath.row].estado
            celda.lblFecha.text = pagados[indexPath.row].fecha
            
            return celda
            
        }
    }
    
    @IBOutlet weak var tvContactos: UITableView!
    @IBOutlet weak var tvPagado: UITableView!
    
    @IBOutlet weak var imgFondoPerfil: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvContactos.backgroundColor = .clear
        tvPagado.backgroundColor = .clear
        
        tvContactos.separatorStyle = .none
        tvContactos.showsVerticalScrollIndicator = false
        
        lblNombre.text = alumno?.nombre
        lblMatricula.text = alumno?.matricula
        lblCel.text = alumno?.cel
        lblCarrera.text = alumno?.carrera
        lblDireccion.text = alumno?.direccion
        lblCorreo.text = alumno?.correo
                
        
        imgFondoPerfil.layer.cornerRadius = 1.0
        imgFondoPerfil.layer.shadowRadius = 10.0
        imgFondoPerfil.layer.shadowOpacity = 0.4
        imgFondoPerfil.layer.shadowOffset = CGSize(width: 5, height: 10)
        imgFondoPerfil.clipsToBounds = false
    
        
        pagados.append(Pagado(estado: "Inscripción", fecha: "22 - Julio - 2022"))
        pagados.append(Pagado(estado: "2da Inscripción", fecha: "28 - Julio - 2022"))
        pagados.append(Pagado(estado: "3era Inscripción", fecha: "21 - Julio - 2022"))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToActualizar" {
             let destino = segue.destination as! ActualizarController
             destino.contacto = contactos![tvContactos.indexPathForSelectedRow!.row]
             destino.callBackActualizar = actualizarContacto
        } else if segue.identifier == "goToActualizar" {
            let destino = segue.destination as! ContactosController
            destino.contactos = contactos
        }
     }
    
    func actualizarContacto(){
        tvContactos.reloadData()
    }
    
}

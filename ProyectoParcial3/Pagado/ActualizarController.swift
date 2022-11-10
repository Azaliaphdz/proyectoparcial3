//
//  ActualizarController.swift
//  ProyectoParcial3
//
//  Created by Azalia on 08/11/22.
//

import UIKit

class ActualizarController: UIViewController {
    
    var contacto: Contacto?
    
    var nombre: String?
    var cel: String?
    var parentesco: String?
    var fondoC: String?
    var fotoC: String?
    
    var callBackActualizar : (() -> Void)?
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtCel: UITextField!
    @IBOutlet weak var txtParentesco: UITextField!
    
    @IBOutlet weak var txtFondoC: UITextField!
    @IBOutlet weak var txtFotoC: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if contacto != nil {
            txtNombre.text = contacto!.nombre
            txtCel.text = contacto!.cel
            txtParentesco.text = contacto!.parentesco
            
            txtFondoC.text = contacto!.fondoC
            txtFotoC.text = contacto!.fotoC
        }
        
    }
    
    @IBAction func doTapActualizar(_ sender: Any) {
        if callBackActualizar != nil {
            contacto?.nombre = txtNombre.text!
            contacto?.cel = txtCel.text!
            contacto?.parentesco = txtParentesco.text!
            
            contacto?.fondoC = txtFondoC.text!
            contacto?.fotoC = txtFotoC.text!
            callBackActualizar!()
            self.navigationController?.popViewController(animated: true)
        }

    }
    
}

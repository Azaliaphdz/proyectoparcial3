//
//  ClasesCollectionViewController.swift
//  ProyectoParcial3
//
//  Created by Azalia on 05/11/22.
//

import UIKit

class ClasesCVController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var imgFondoHorario: UIImageView!
    @IBOutlet weak var imgFondoBlanco: UIImageView!
    @IBOutlet weak var imgFondoBlanco2: UIImageView!
    
    
    var alumnos : [Contacto] = []
    var alumno : Contacto?
    var contactos : [Contacto] = []
    
    var materias : [Materia] = []
    
    var clasesCV = ClasesCV.fetchClasesCV()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = UIColor.clear.withAlphaComponent(0)
        
        collectionView?.dataSource = self
        collectionView?.delegate = self
        
        //Sombras
        
        imgFondoBlanco.layer.cornerRadius = 1.0
        imgFondoBlanco.layer.shadowRadius = 10.0
        imgFondoBlanco.layer.shadowOpacity = 0.4
        imgFondoBlanco.layer.shadowOffset = CGSize(width: 5, height: 10)
        imgFondoBlanco.clipsToBounds = false
        
        imgFondoBlanco2.layer.cornerRadius = 1.0
        imgFondoBlanco2.layer.shadowRadius = 10.0
        imgFondoBlanco2.layer.shadowOpacity = 0.4
        imgFondoBlanco2.layer.shadowOffset = CGSize(width: 5, height: 10)
        imgFondoBlanco2.clipsToBounds = false
        
        contactos.append(Contacto(nombre: "Marcela Hernández Delgado", cel: "6441172430", parentesco: "Madre", fondoC: "Morado", fotoC: "Contacto1"))
        contactos.append(Contacto(nombre: "Abisaid Manuel Peña Valdez", cel: "6441545187", parentesco: "Padre", fondoC: "Verde", fotoC: "Contacto2"))
        
        materias.append(Materia(materia:"Programación",maestro: "Emiliano", horario: "7:00 am - 9:00 am", imagen: "programacion", faltas: "0", check: "check2", rate1: "enojado2", rate2: "triste2", rate3: "maso2", rate4: "feli2", rate5: "feliz2", evaluacion: 0))
        materias.append(Materia(materia:"Animación",maestro: "Guillermo", horario: "9:00 am - 11:00 am", imagen: "animacion", faltas: "2", check: "check2",  rate1: "enojado2", rate2: "triste2", rate3: "maso2", rate4: "feli2", rate5: "feliz2",evaluacion: 0 ))
        materias.append(Materia(materia:"Diosito",maestro: "Francisco", horario: "11:00 am - 12:00 pm", imagen: "diosito", faltas: "3", check: "check2",  rate1: "enojado2", rate2: "triste2", rate3: "maso2", rate4: "feli2", rate5: "feliz2", evaluacion: 0))
        materias.append(Materia(materia:"Redes",maestro: "Ruben Omar", horario: "12:00 pm - 2:00 pm", imagen: "redes", faltas: "1", check: "check2",  rate1: "enojado2", rate2: "triste2", rate3: "maso2", rate4: "feli2", rate5: "feliz2", evaluacion: 0))
        materias.append(Materia(materia:"México",maestro: "Rosalva Ruiz", horario: "2:00 pm - 4:00 pm", imagen: "mexico", faltas: "2", check: "check2",  rate1: "enojado2", rate2: "triste2", rate3: "maso2", rate4: "feli2", rate5: "feliz2", evaluacion: 0))
        
        
    }
}

extension ClasesCVController : UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return clasesCV.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "celdaClasesCV", for: indexPath) as! CeldaClasesCV
        
        celda.clasesCV = clasesCV[indexPath.item]
        
        return celda
    }
}

extension ClasesCVController : UIScrollViewDelegate, UICollectionViewDelegate {
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
    {
        let layout = self.collectionView?.collectionViewLayout as! UICollectionViewFlowLayout
        let cellWidthIncludingSpacing = layout.itemSize.width + layout.minimumLineSpacing
        
        var offset = targetContentOffset.pointee
        let index = (offset.x + scrollView.contentInset.left) / cellWidthIncludingSpacing
        let roundedIndex = round(index)
        
        offset = CGPoint(x: roundedIndex * cellWidthIncludingSpacing - scrollView.contentInset.left, y: -scrollView.contentInset.top)
        targetContentOffset.pointee = offset
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToContactos" {
            let destino = segue.destination as! ContactosController
            destino.contactos = contactos
            
        } else if segue.identifier == "goToClases" {
            let destino = segue.destination as! MateriasController
            destino.materias = materias
        }
        
        if segue.identifier == "goToHorario" {
            let destino = segue.destination as! HorarioController
            
            
        } else if segue.identifier == "goToMenu" {
            let destino = segue.destination as! MenuController
            
        }
        
        
    }
}



//
//  ClasesCollectionView.swift
//  ProyectoParcial3
//
//  Created by Azalia on 05/11/22.
//

import UIKit

class ClasesCV {
    var title = ""
    var featuredImage: UIImage
    var background: UIImage
    
    init(title: String, featuredImage: UIImage, background: UIImage) {
        self.title = title
        self.featuredImage = featuredImage
        self.background = background
    }
    
    static func fetchClasesCV() -> [ClasesCV] {
        return [
            ClasesCV(title: "Programacion", featuredImage: UIImage(named: "Progra")!, background: UIImage(named: "Rosa")!),
            ClasesCV(title: "Estadística", featuredImage: UIImage(named: "Estadistica")!, background: UIImage(named: "Azul")!),
            ClasesCV(title: "Diseño web", featuredImage: UIImage(named: "Dis_web")!, background: UIImage(named: "Naranja")!),
            ClasesCV(title: "Animación", featuredImage: UIImage(named: "Animacion")!, background: UIImage(named: "Verde")!),
            ClasesCV(title: "Fotografía", featuredImage: UIImage(named: "Foto")!, background: UIImage(named: "Morado")!),
            ClasesCV(title: "Física II", featuredImage: UIImage(named: "Fisica")!, background: UIImage(named: "Rosa")!),
            ClasesCV(title: "Diosito", featuredImage: UIImage(named: "Diosito")!, background: UIImage(named: "Azul")!),


        ]
    }
}

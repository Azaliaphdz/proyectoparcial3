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
            ClasesCV(title: "Progra", featuredImage: UIImage(named: "progra")!, background: UIImage(named: "Rosa")!),
            ClasesCV(title: "Progra", featuredImage: UIImage(named: "progra")!, background: UIImage(named: "Azul")!),
            ClasesCV(title: "Progra", featuredImage: UIImage(named: "progra")!, background: UIImage(named: "Naranja")!),
            ClasesCV(title: "Progra", featuredImage: UIImage(named: "progra")!, background: UIImage(named: "Verde")!),
            ClasesCV(title: "Progra", featuredImage: UIImage(named: "progra")!, background: UIImage(named: "Morado")!),
            ClasesCV(title: "Progra", featuredImage: UIImage(named: "progra")!, background: UIImage(named: "Rosa")!),
            ClasesCV(title: "Progra", featuredImage: UIImage(named: "progra")!, background: UIImage(named: "Azul")!),
        ]
    }
}

//
//  Menu.swift
//  ProyectoParcial3
//
//  Created by Azalia on 09/11/22.
//

import UIKit

class Menu {
    var imgPlatillo: UIImage
    var lblPlatillo: String
    var lblPPrecio: String
    
    init(imgPlatillo: UIImage, lblPlatillo: String, lblPPrecio: String) {
        self.imgPlatillo = imgPlatillo
        self.lblPlatillo = lblPlatillo
        self.lblPPrecio = lblPPrecio
    }
    
    static func fetchMenu() -> [Menu] {
        return [
            Menu(imgPlatillo: UIImage(named: "enchiladas-suizas")!, lblPlatillo: "Enchiladas Suizas", lblPPrecio: "$40"),
            Menu(imgPlatillo: UIImage(named: "ensalada")!, lblPlatillo: "Ensalada", lblPPrecio: "$35"),
            Menu(imgPlatillo: UIImage(named: "hamburguesa")!, lblPlatillo: "Hamburguesa", lblPPrecio: "$50"),
            Menu(imgPlatillo: UIImage(named: "hot-dog")!, lblPlatillo: "Hot-dog", lblPPrecio: "$39"),
            Menu(imgPlatillo: UIImage(named: "pizaa")!, lblPlatillo: "Pizza", lblPPrecio: "$25"),
            Menu(imgPlatillo: UIImage(named: "sandwich")!, lblPlatillo: "Sandwich", lblPPrecio: "$29"),
            Menu(imgPlatillo: UIImage(named: "spaghetti")!, lblPlatillo: "Spaghetti", lblPPrecio: "$42"),
            Menu(imgPlatillo: UIImage(named: "sushi")!, lblPlatillo: "Sushi", lblPPrecio: "$90"),
        ]
    }
}

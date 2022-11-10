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
            Menu(imgPlatillo: UIImage(named: "Rosa")!, lblPlatillo: "Quesadilla", lblPPrecio: "$40"),
            Menu(imgPlatillo: UIImage(named: "Rosa")!, lblPlatillo: "Quesadilla", lblPPrecio: "$40"),
            Menu(imgPlatillo: UIImage(named: "Rosa")!, lblPlatillo: "Quesadilla", lblPPrecio: "$40"),
            Menu(imgPlatillo: UIImage(named: "Rosa")!, lblPlatillo: "Quesadilla", lblPPrecio: "$40"),
        ]
    }
}

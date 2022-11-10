//
//  CeldaMenuController.swift
//  ProyectoParcial3
//
//  Created by Azalia on 09/11/22.
//

import UIKit

class CeldaMenuController: UICollectionViewCell {
    @IBOutlet weak var imgPlatillo:  UIImageView!
    @IBOutlet weak var lblPlatillo: UILabel!
    @IBOutlet weak var lblPPrecio: UILabel!
    
    var menu: Menu? {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI() {
        if let menu = menu {
            imgPlatillo.image = menu.imgPlatillo
            lblPlatillo.text = menu.lblPlatillo
            lblPPrecio.text = menu.lblPPrecio
        } else {
            imgPlatillo.image = nil
            lblPlatillo.text = nil
            lblPPrecio.text = nil
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 3.0
        layer.shadowRadius = 4
        layer.shadowOpacity = 0.2
        layer.shadowOffset = CGSize(width: 5, height: 10)
        
        self.clipsToBounds = false
    }
}

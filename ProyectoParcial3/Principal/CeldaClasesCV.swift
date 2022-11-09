//
//  ClasesCollectionViewCell.swift
//  ProyectoParcial3
//
//  Created by Azalia on 05/11/22.
//

import UIKit

class CeldaClasesCV: UICollectionViewCell {
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var interestTitleLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    var clasesCV: ClasesCV? {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI() {
        if let clasesCV = clasesCV {
            featuredImageView.image = clasesCV.featuredImage
            interestTitleLabel.text = clasesCV.title
            background.image = clasesCV.background
        } else {
            featuredImageView.image = nil
            interestTitleLabel.text = nil
            background.image = nil
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


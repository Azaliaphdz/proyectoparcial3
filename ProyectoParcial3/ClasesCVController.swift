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
    
    var clasesCV = ClasesCV.fetchClasesCV()
    
    
    //let cellScaling: CGFloat = 0.85
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = UIColor.clear.withAlphaComponent(0)
        
        //let screenSize = UIScreen.main.bounds.size
        //let cellWidth = floor(screenSize.width * cellScaling)
        //let cellHeight = floor(screenSize.height * cellScaling)
        
        //let insetX = (view.bounds.width - cellWidth) / 2.0
        //let insetY = (view.bounds.height - cellHeight) / 2.0
        
        //let layout = collectionView!.collectionViewLayout as! UICollectionViewFlowLayout
        //layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        //collectionView?.contentInset = UIEdgeInsets(top: insetY, left: insetX, bottom: insetY, right: insetX)
        
        
        
        collectionView?.dataSource = self
        collectionView?.delegate = self
        
        
        //Sombras
        imgFondoHorario.layer.cornerRadius = 3.0
        imgFondoHorario.layer.shadowRadius = 10.0
        imgFondoHorario.layer.shadowOpacity = 0.4
        imgFondoHorario.layer.shadowOffset = CGSize(width: 5, height: 10)
        imgFondoHorario.clipsToBounds = false
        
        imgFondoBlanco.layer.cornerRadius = 1.0
        imgFondoBlanco.layer.shadowRadius = 10.0
        imgFondoBlanco.layer.shadowOpacity = 0.4
        imgFondoBlanco.layer.shadowOffset = CGSize(width: 5, height: 10)
        imgFondoBlanco.clipsToBounds = false
        
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
}



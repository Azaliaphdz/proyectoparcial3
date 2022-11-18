//
//  MenuController.swift
//  ProyectoParcial3
//
//  Created by Azalia on 09/11/22.
//

import UIKit

class MenuController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var collectionView2: UICollectionView!
    
    @IBOutlet weak var imgFondoEspecial: UIImageView!
    
    var menu = Menu.fetchMenu()
    var bebidas: [Bebida] = []
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bebidas.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 167
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaBebida") as! CeldaBebidaController
        
        celda.imgBebida.image = UIImage(named: bebidas[indexPath.row].fotoBebida)
        celda.lblBebida.text = bebidas[indexPath.row].nombreBebida
        celda.lblBPrecio.text = bebidas[indexPath.row].precioBebida
        
        celda.imgBebida2.image = UIImage(named: bebidas[indexPath.row].fotoBebida2)
        celda.lblBebida2.text = bebidas[indexPath.row].nombreBebida2
        celda.lblBPrecio2.text = bebidas[indexPath.row].precioBebida2
        
        return celda
    }
    
    
    @IBOutlet weak var imgEspecial: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblPrecio: UILabel!
    
    @IBOutlet weak var tvBebidas: UITableView!
    
    var especial: Especial = Especial(fotoEspecial: "boneless", nombre: "Boneless", precio: "$70")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvBebidas.separatorStyle = .none
        //tvBebidas.showsVerticalScrollIndicator = false
        
        imgFondoEspecial.layer.cornerRadius = 1.0
        imgFondoEspecial.layer.shadowRadius = 10.0
        imgFondoEspecial.layer.shadowOpacity = 0.4
        imgFondoEspecial.layer.shadowOffset = CGSize(width: 5, height: 10)
        imgFondoEspecial.clipsToBounds = false
        
        lblNombre.text = especial.nombre
        imgEspecial.image = UIImage(named: especial.fotoEspecial)
        lblPrecio.text = especial.precio
        
        collectionView2?.dataSource = self
        collectionView2?.delegate = self
        
        bebidas.append(Bebida(fotoBebida: "cafe", nombreBebida: "Café", precioBebida: "$71", fotoBebida2: "horchata2", nombreBebida2: "Horchata", precioBebida2: "$22"))
    
    }

}


extension MenuController : UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "celdaMenu", for: indexPath) as! CeldaMenuController
        
        celda.menu = menu[indexPath.item]
        
        return celda
    }
}

extension MenuController : UIScrollViewDelegate, UICollectionViewDelegate {
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
    {
        let layout = self.collectionView2?.collectionViewLayout as! UICollectionViewFlowLayout
        let cellWidthIncludingSpacing = layout.itemSize.width + layout.minimumLineSpacing
        
        var offset = targetContentOffset.pointee
        let index = (offset.x + scrollView.contentInset.left) / cellWidthIncludingSpacing
        let roundedIndex = round(index)
        
        offset = CGPoint(x: roundedIndex * cellWidthIncludingSpacing - scrollView.contentInset.left, y: -scrollView.contentInset.top)
        targetContentOffset.pointee = offset
    }
}

//
//  ViewController.swift
//  realanime wallpapers
//
//  Created by Amine on 3/2/20.
//  Copyright © 2020 Amine. All rights reserved.
//

import UIKit
import SDWebImage

class ViewController: UIViewController, UICollectionViewDataSource {
    @IBOutlet weak var CollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screen = UIScreen.main.bounds
        let width = screen.width
        
        let layout = CollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        layout.itemSize = CGSize(width: (width-20)/2, height: (width-20)/2)
        
        CollectionView.delegate = self as? UICollectionViewDelegate
        CollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.thumbnail.sd_setImage(with: URL(string: "https://i.imgur.com/0AftTgP.jpg"))
        
        return cell
    }
    

}


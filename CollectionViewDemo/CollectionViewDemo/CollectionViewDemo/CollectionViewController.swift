//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by iFlame. on 29/03/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class customCollectionCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
}

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate{

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    //let fruits = [""]
    
    var _size = CGFloat(UIScreen.main.bounds.size.width - 20 - 22) / 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        
        let collectionLayout = UICollectionViewFlowLayout()
        collectionLayout.scrollDirection = .horizontal
        collectionLayout.minimumInteritemSpacing = 10
        collectionLayout.minimumLineSpacing = 10
        
        myCollectionView.collectionViewLayout = collectionLayout
        myCollectionView.reloadData()
        
        myCollectionView.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    //MARK:- UICollectionDelegate
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellIdentifier", for: indexPath) as! customCollectionCell
        cell.imageView.image = UIImage.init(named: String.init(format: "%d", indexPath.row))
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: _size, height: _size)
    }
    
}

//extension CollectionViewController : UICollectionViewFlowLayout {
//    
//}


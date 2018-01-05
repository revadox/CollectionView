//
//  ViewController.swift
//  CollectionView
//
//  Created by darshan on 05/01/18.
//  Copyright © 2018 darshan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    @IBOutlet var myCollectionView: UICollectionView!
    
    var gridLayout: GridLayout = GridLayout(numberOfColumns: 3)

    
    var imageArray = ["1","2","3","4","5","6","7","8","9","10","3","4","5","6","7","8","9","10","3","4","5","6","7","8","9","10"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCell
        cell.myImageView.image = UIImage(named:imageArray[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("item selected \(indexPath.row)")
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        myCollectionView.collectionViewLayout = gridLayout
        myCollectionView.reloadData()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        gridLayout.invalidateLayout()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


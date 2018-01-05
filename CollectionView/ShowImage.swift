//
//  ShowImage.swift
//  CollectionView
//
//  Created by darshan on 05/01/18.
//  Copyright © 2018 darshan. All rights reserved.
//

import UIKit

class ShowImage: UIViewController {

 
    
 
    @IBOutlet var showImage: UIImageView!
    
    
    var image = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    showImage.image = image
        navigationItem.title = "image"
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}

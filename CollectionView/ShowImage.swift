//
//  ShowImage.swift
//  CollectionView
//
//  Created by darshan on 05/01/18.
//  Copyright © 2018 darshan. All rights reserved.
//

import UIKit

class ShowImage: UIViewController,UIScrollViewDelegate {

 
    
    @IBOutlet var imageScrollView: UIScrollView!
    
    @IBOutlet var showImage: UIImageView!
    
    @IBAction func zoomImage(_ sender: Any) {
        
        if (imageScrollView.zoomScale < 1.5) {
            
            //2
            imageScrollView.setZoomScale(imageScrollView.maximumZoomScale, animated: true)
            
        } else {
            
            //3
            imageScrollView.setZoomScale(imageScrollView.minimumZoomScale, animated: true)
            
        }
        
        
  
        
    }
    
    var image = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showImage.image = image
        navigationItem.title = "image"
        
        self.imageScrollView.isUserInteractionEnabled = true
        self.imageScrollView.minimumZoomScale = 1.0
        self.imageScrollView.maximumZoomScale = 6.0
       
    }
    
    
   
        
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.showImage
    }
    



}

//
//  GalleryViewController.swift
//  avcorp
//
//  Created by Akash Jambhulkar on 01/07/19.
//  Copyright © 2019 Akash Jambhulkar. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    let imgArray = ["finance", "attendance", "app1", "app2", "app3", "down1", "down2"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GalleryCell", for: indexPath) as! GalleryCell
        
        cell.img.image = UIImage(named: imgArray[indexPath.row])
        
//        if UIDevice.current.orientation.isLandscape {
//            cell.frame.size.width = (mainCollectionView.frame.size.width-10)/3
//            cell.frame.size.height = (mainCollectionView.frame.size.height-10)/3
//        } else {
//            cell.frame.size.width = (mainCollectionView.frame.size.width-5)/3
//            cell.frame.size.height = (mainCollectionView.frame.size.height-10)/3
//        }
        // Configure the cell
        // 3
//        cell.backgroundColor = cellColor ? UIColor.red : UIColor.blue
//        cellColor = !cellColor
        
        return cell
    }
    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//        if UIDevice.current.orientation.isLandscape {
//            return CGSize(width: (mainCollectionView.frame.size.width-10)/2, height: (mainCollectionView.frame.size.height-10)/2)
//            
//        } else{
//            return CGSize(width: (mainCollectionView.frame.size.width-5)/2, height: (mainCollectionView.frame.size.height-10)/3)
//        }
//    }
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        var numberOfCellInRow : Int = 2
        var padding : Int = 5
        var collectionCellWidth : CGFloat = (self.view.frame.size.width/CGFloat(numberOfCellInRow)) - CGFloat(padding)
        return CGSize(width: collectionCellWidth , height: collectionCellWidth)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

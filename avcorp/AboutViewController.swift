//
//  AboutViewController.swift
//  avcorp
//
//  Created by Akash Jambhulkar on 01/07/19.
//  Copyright © 2019 Akash Jambhulkar. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    private let arr = ["Software Development", "SEO service", "Mobile application", "Quality", "Website design and development", "Web hosting"]
    private let arrProgress = [0.8, 0.8, 0.95, 0.95, 0.85, 0.85]
    
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
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AboutCell", for: indexPath) as! AboutCell
        
        cell.text.text = arr[indexPath.row]
        cell.progress.progress = Float(arrProgress[indexPath.row])
        let percent = Int(Float(arrProgress[indexPath.row]) * 100)
        
        cell.percent.text = "\(percent)%"
        
        
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }

}

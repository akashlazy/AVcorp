//
//  AddNewsViewController.swift
//  avcorp
//
//  Created by Akash Jambhulkar on 02/07/19.
//  Copyright © 2019 Akash Jambhulkar. All rights reserved.
//

import UIKit

class AddNewsViewController: UIViewController {
    
    @IBOutlet weak var btnCancel: UIBarButtonItem!
    @IBOutlet weak var btnDone: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func cancelButtonClick(_ sender: UIBarButtonItem) {
        self.navigationController?.dismiss(animated: true, completion: {
            
        })
    }

    @IBAction func doneButtonClick(_ sender: UIBarButtonItem) {
        self.navigationController?.dismiss(animated: true, completion: {
            
        })
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

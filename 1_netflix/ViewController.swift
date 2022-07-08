//
//  ViewController.swift
//  1_netflix
//
//  Created by Mac Pro 15 on 2022/07/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var preview1: UIImageView!
    @IBOutlet weak var preview2: UIImageView!
    @IBOutlet weak var preview3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        preview1.layer.masksToBounds = true
        preview1.layer.cornerRadius = 50
        preview2.layer.masksToBounds = true
        preview2.layer.cornerRadius = 50
        preview3.layer.masksToBounds = true
        preview3.layer.cornerRadius = 50
        
    }


}


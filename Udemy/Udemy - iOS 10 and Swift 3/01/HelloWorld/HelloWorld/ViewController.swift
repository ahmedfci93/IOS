//
//  ViewController.swift
//  HelloWorld
//
//  Created by Ahmed Ibrahim on 2/5/18.
//  Copyright © 2018 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var titleImg: UIImageView!
    @IBOutlet weak var wlcBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func wlcPress(_ sender: Any) {
        background.isHidden=false
        titleImg.isHidden=false
        wlcBtn.isHidden=true
    }
    
}


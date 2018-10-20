//
//  ViewController.swift
//  Delegate
//
//  Created by Ahmed Ibrahim on 10/19/18.
//  Copyright © 2018 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let firstVC = FirstVC()
    let secondVC = SecondVC()
    let alert = UIAlertController(title: "Alert", message: "enter decument title", preferredStyle: UIAlertControllerStyle.alert)
    @IBOutlet weak var documentTitle: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firstVC.delegate = secondVC
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
    }
    
    @IBAction func sentDocu(_ sender: Any) {
        let title = documentTitle.text
        if  title != nil && !(title?.isEmpty)! {
            performSegue(withIdentifier: "Secretary", sender: documentTitle.text)
        } else {
            self.present(alert,animated:true,completion:nil)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? Secretary{
            if let title = sender as? String{
                destination._message = (firstVC.delegate?.passData(data: title))!
            }
        }
    }
    
}


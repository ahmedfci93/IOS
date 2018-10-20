//
//  Secretary.swift
//  Delegate
//
//  Created by Ahmed Ibrahim on 10/19/18.
//  Copyright © 2018 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class Secretary: UIViewController {

    @IBOutlet weak var text: UITextView!
    private var message:String!
    var _message: String{
        get{
            return message
        } set {
            message = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        text.text = message
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

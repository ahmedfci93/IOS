//
//  MusicListVC.swift
//  Connect Screens With Segues
//
//  Created by Ahmed Ibrahim on 10/8/18.
//  Copyright © 2018 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.lightGray
    }
    
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "Perfect - Ed Sheraan"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC{
            if let song = sender as? String{
                destination.selectedSong = song
            }
        }
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

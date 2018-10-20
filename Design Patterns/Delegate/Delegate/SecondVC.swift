//
//  SecondVC.swift
//  Delegate
//
//  Created by Ahmed Ibrahim on 10/19/18.
//  Copyright © 2018 Ahmed Ibrahim. All rights reserved.
//

import Foundation

class SecondVC: FirstVCDelegate {
    func passData(data: String) -> String {
        return "I'm CEO sent me Document :\(data)"
    }
}

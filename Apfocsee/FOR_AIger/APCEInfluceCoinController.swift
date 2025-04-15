//
//  APCEInfluceCoinController.swift
//  Apfocsee
//
//  Created by mumu on 2025/4/15.
//

import UIKit

class APCEInfluceCoinController: UIViewController {
    var onRechargeTapped: (() -> Void)?
   


    @IBAction func recahrgeButtonAPCB(_ sender: Any) {
        self.dismiss(animated: true)
        if onRechargeTapped != nil {
            onRechargeTapped!()
        }
       
    }
    

    @IBAction func fabdiassdFoein(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

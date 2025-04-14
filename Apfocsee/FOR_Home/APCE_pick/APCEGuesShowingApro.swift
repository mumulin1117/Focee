//
//  APCEGuesShowingApro.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit
//showing盲盒
class APCEGuesShowingApro: UIViewController {
    
    @IBOutlet weak var thinkTrue: UIButton!
    
    @IBOutlet weak var thinkFalse: UIButton!
    @IBOutlet weak var thinkimg: UIImageView!
    
    @IBOutlet weak var thinkuserPhoto: UIImageView!
    

    @IBOutlet weak var thinkuserBanme: UILabel!
    
    
    @IBOutlet weak var thinkingcontent: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thinkimg.layer.cornerRadius  = 20
       
        deploySneakyPrankBot()
        
        thinkimg.layer.masksToBounds = true
     
    }
    
    private func deploySneakyPrankBot() {
        
        focceRepo.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        thinkTrue.addTarget(self, action: #selector(thinkIsTure(ert:)), for: .touchUpInside)
        thinkuserPhoto.layer.cornerRadius = 14
        thinkFalse.addTarget(self, action: #selector(thinkIsTure(ert:)), for: .touchUpInside)
        thinkuserPhoto.layer.masksToBounds = true
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
    }
    
  
   
    
    @objc func backJokeDomino(ert:UIButton) {
        if ert ==  MatrixButon {
            self.navigationController?.popViewController(animated: true)
        }
        
        if ert ==  focceRepo {
            //举报
        }
    }
    @IBOutlet weak var MatrixButon: UIButton!
    
    @IBOutlet weak var focceRepo: UIButton!
    
    
    
    
    @objc func thinkIsTure(ert:UIButton) {
        if ert ==  thinkTrue {
         
        }
        
        if ert ==  thinkFalse {
            //举报
        }
    }
    
}

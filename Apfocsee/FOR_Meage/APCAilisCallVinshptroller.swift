//
//  APCAilisCallVinshptroller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit
//视频播放
class APCAilisCallVinshptroller: UIViewController {
    
    
    @IBOutlet weak var EffectLbl: UILabel!
    
    //mine icon
    @IBOutlet weak var MeteorIMge: UIImageView!
    
    @IBOutlet weak var backgoungimge: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        deploySneakyPrankBot()
    }
    
   
    @IBAction func igniteComedy(_ sender: UIButton) {
    }
    
    
    //decline
    @IBAction func dellatetDFooce(_ sender: UIButton) {
    }
    
    
    private func deploySneakyPrankBot() {
        MeteorIMge.layer.cornerRadius = 12
        
        focceRepo.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        MeteorIMge.layer.masksToBounds = true
     
        
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
    
    @IBOutlet weak var focceRepo: UIButton!
    
    @IBOutlet weak var MatrixButon: UIButton!
}

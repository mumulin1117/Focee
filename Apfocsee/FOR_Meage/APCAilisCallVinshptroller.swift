//
//  APCAilisCallVinshptroller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit
//视频播放
class APCAilisCallVinshptroller: FooceeSenConrer {
    
    
    @IBOutlet weak var EffectLbl: UILabel!
    
    //mine icon
    @IBOutlet weak var MeteorIMge: UIImageView!
    
    @IBOutlet weak var backgoungimge: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgoungimge.image = UIImage(named: self.userNoafl?.blindbox_avpter ?? "") 
        deploySneakyPrankBot()
        MeteorIMge.layer.cornerRadius = 15
        MeteorIMge.layer.masksToBounds = true
        PrankStashRepository()
    }
    private func PrankStashRepository(){
        EffectLbl.text = self.userNoafl?.blindbox_name
        MeteorIMge.image = APCELBarliDxiuController.appChacheimg
    }
   
    @IBAction func igniteComedy(_ sender: UIButton) {
        
        showingAlertingFor_Alert(alsemessage:"Please try this function after the call is connected!")
    }
    
    
    //decline
    @IBAction func dellatetDFooce(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
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
            self.reporitEchoBoost()
        }
    }
    
    @IBOutlet weak var focceRepo: UIButton!
    
    @IBOutlet weak var MatrixButon: UIButton!
}

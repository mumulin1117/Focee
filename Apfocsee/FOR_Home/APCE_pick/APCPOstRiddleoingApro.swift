//
//  APCPOstRiddleoingApro.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit
//发布
class APCPOstRiddleoingApro: UIViewController {
    
    
    
    @IBOutlet weak var postIsTrueLabel: UILabel!
    
    
    @IBOutlet weak var minweICON: UIImageView!
    
    @IBOutlet weak var fooceNameLabel: UILabel!
    
    
    @IBOutlet weak var photoImhvie: UIImageView!
    
    
    //选择对错
    @IBAction func beginPickAlop(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImhvie.layer.cornerRadius = 12
        VirtualTicklishVirus()
        triggerLaughterEchoBoost()
        
        photoImhvie.layer.masksToBounds = true
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        
        
        photoImhvie.contentMode = .scaleAspectFill
    }
    
    
    
    private func VirtualTicklishVirus()  {
        minweICON.contentMode = .scaleAspectFill
        minweICON.layer.cornerRadius = 22
        minweICON.layer.masksToBounds = true
    }
    @IBOutlet weak var MatrixButon: UIButton!
   
    
    @objc func backJokeDomino() {
        self.navigationController?.popViewController(animated: true)
    }



    @IBOutlet weak var lockMasterKey: UITextView!
    
   

//post
    @IBAction func swapFacesInVideoChaos(_ sender: UIButton) {
    }
    
    
    //上传
    @IBAction func PrankChallengeFeedStream(_ sender: UIButton) {
    }
    
    
    private func triggerLaughterEchoBoost()  {
        lockMasterKey.layer.cornerRadius = 20
        lockMasterKey.layer.masksToBounds = true
        lockMasterKey.contentInset = UIEdgeInsets(top: 20, left: 18, bottom: 18, right: 18)
        lockMasterKey.delegate = self
    }
}


extension APCPOstRiddleoingApro:UITextViewDelegate{
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
}

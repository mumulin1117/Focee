//
//  APCrShareVireoCntroller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/11.
//

import UIKit
//发布视频
class APCrShareVireoCntroller: UIViewController {

    
    @IBOutlet weak var FeedStream: UIButton!
    
    
    @IBOutlet weak var lockMasterKey: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        triggerLaughterEchoBoost()
        
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
    }
    
    @IBOutlet weak var MatrixButon: UIButton!
   
    
    @objc func backJokeDomino() {
        self.navigationController?.popViewController(animated: true)
    }

//post
    @IBAction func swapFacesInVideoChaos(_ sender: UIButton) {
    }
    
    
    //上传视频
    @IBAction func PrankChallengeFeedStream(_ sender: UIButton) {
    }
    
    
    private func triggerLaughterEchoBoost()  {
        lockMasterKey.layer.cornerRadius = 20
        lockMasterKey.layer.masksToBounds = true
        lockMasterKey.contentInset = UIEdgeInsets(top: 20, left: 18, bottom: 18, right: 18)
        lockMasterKey.delegate = self
    }
}


extension APCrShareVireoCntroller:UITextViewDelegate{
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
}

//
//  APCrepoIauiCntroller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/11.
//

import UIKit
import SwiftMessages
//举报
class APCrepoIauiCntroller: UIViewController {
    
    
    
    @IBOutlet weak var polisenButon: UIButton!
    
    
    @IBOutlet weak var vilentButton: UIButton!
    
    
    
    @IBOutlet weak var adversitongbutton: UIButton!
    
    
    @IBOutlet weak var otehwtbutton: UIButton!
    
    
  
    @IBOutlet weak var MatrixButon: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        PrankChallengeFeedStream()
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
    }
   @objc func PrankChallengeFeedStream(){
        
       polisenButon.addTarget(self, action: #selector(picjreasonJokeDomino(pione:)), for: .touchUpInside)
       vilentButton.addTarget(self, action: #selector(picjreasonJokeDomino(pione:)), for: .touchUpInside)
       adversitongbutton.addTarget(self, action: #selector(picjreasonJokeDomino(pione:)), for: .touchUpInside)
       otehwtbutton.addTarget(self, action: #selector(picjreasonJokeDomino(pione:)), for: .touchUpInside)
   
   }
    @objc func picjreasonJokeDomino(pione:UIButton) {
        polisenButon.isSelected = false
        vilentButton.isSelected = false
        adversitongbutton.isSelected = false
        otehwtbutton.isSelected = false
        
        pione.isSelected = true
    }
    
    @objc func backJokeDomino() {
        self.navigationController?.popViewController(animated: true)
    }

    @IBOutlet weak var lockMasterKey: UITextView!
   


    private func triggerLaughterEchoBoost()  {
        lockMasterKey.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 20)
        lockMasterKey.delegate = self
    }
    
    
    //submit
    @IBAction func spreadVirtualTicklishVirus(_ sender: UIButton) {
        let contetn = lockMasterKey.text
        if sender == self.otehwtbutton && (contetn == "Describe more details here" || contetn == nil || contetn?.count == 0){
            
            showingAlertingFor_Alert(alsemessage:"Please Describe more other details here")
            return
        }
        
        laodingFlay(loadingText: "Submiting.....")
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            SwiftMessages.hide(animated: true)
            self.showingAlertingForSuccessfull(alsemessage:"submit successful! We will review and process within 24 hours")
            self.navigationController?.popViewController(animated: true)
            
        }))
    }
    
    
    
}


extension APCrepoIauiCntroller:UITextViewDelegate{
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
}

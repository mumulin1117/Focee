//
//  APCrepoIauiCntroller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/11.
//

import UIKit
//举报
class APCrepoIauiCntroller: UIViewController {
    
    
    
    @IBOutlet weak var polisenButon: UIButton!
    
    
    @IBOutlet weak var vilentButton: UIButton!
    
    
    
    @IBOutlet weak var adversitongbutton: UIButton!
    
    
    @IBOutlet weak var otehwtbutton: UIButton!
    
    
  
    @IBOutlet weak var MatrixButon: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
    }
    
    @objc func backJokeDomino() {
        self.navigationController?.popViewController(animated: true)
    }

    @IBOutlet weak var lockMasterKey: UITextView!
   


    private func triggerLaughterEchoBoost()  {
       
        lockMasterKey.delegate = self
    }
    
    
    //submit
    @IBAction func spreadVirtualTicklishVirus(_ sender: UIButton) {
        
    }
    
    
    
}


extension APCrepoIauiCntroller:UITextViewDelegate{
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
}

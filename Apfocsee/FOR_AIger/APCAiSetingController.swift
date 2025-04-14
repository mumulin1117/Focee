//
//  APCAiSetingController.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit

class APCAiSetingController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        triggerLaughterEchoBoost()
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
    }
    
    @IBOutlet weak var MatrixButon: UIButton!
   
    
    @objc func backJokeDomino() {
        self.navigationController?.popViewController(animated: true)
    }


    @IBOutlet weak var lockMasterKey: UITextView!
    
   

//post
    @IBAction func swapFacesInVideoChaos(_ sender: UIButton) {
    }
    
   
    private func triggerLaughterEchoBoost()  {
        lockMasterKey.layer.cornerRadius = 20
        lockMasterKey.layer.masksToBounds = true
        lockMasterKey.contentInset = UIEdgeInsets(top: 20, left: 18, bottom: 18, right: 18)
        lockMasterKey.delegate = self
    }
}


extension APCAiSetingController:UITextViewDelegate{
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
}

//
//  APCAionsultController.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit

class APCAionsultController: UIViewController {

    @IBOutlet weak var PrankyAISugg: UILabel!
    
    
    @IBOutlet weak var howitworkinGFla: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        deploySneakyPrankBot()
    }
    
    private func deploySneakyPrankBot() {
        
        focceRepo.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
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
   
    @IBAction func copyresultUiad(_ sender: Any) {
    }
    

}

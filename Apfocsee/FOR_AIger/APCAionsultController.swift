//
//  APCAionsultController.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit
import SwiftMessages
import Alamofire
class APCAionsultController: UIViewController ,UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
    private var titileForTYPE:String?
    private var titileForAudience:String?
    private var themeForTYPE:String?
    
    init(titileForTYPE: String? = nil, titileForAudience: String? = nil, themeForTYPE: String? = nil) {
        self.titileForTYPE = titileForTYPE
        self.titileForAudience = titileForAudience
        self.themeForTYPE = themeForTYPE
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var purcleView: UIView!
    
    
    
   

    @IBOutlet weak var PrankyAISugg: UILabel!
    
    
    @IBOutlet weak var howitworkinGFla: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        deploySneakyPrankBot()
        howitworkinGFla.text = "Result generation in progress......"
        howitworkinGFla.delegate = self
        
        let abayuistion = "Now you are playing the role of 'prank AI', please give me some funny prank ideas or a clever trick to fool my friends. Please give me some mischievous advice. My prank type is:" + (titileForTYPE ?? "") + ", my prank target is:" + (titileForAudience ?? "") + ", and my prank requirement is specifically described as:"  + (themeForTYPE ?? "")
        laodingFlay(loadingText: "Generating creative ideas.....")
       
        AF.request("http://www.digitalharmony34.xyz/talktwo/askQuestionv2", method: .post, parameters: ["question": abayuistion,"questionType": 1,"eqNo":"5555"], encoding: JSONEncoding.default, headers: nil)
            .responseJSON { response in
                SwiftMessages.hide(animated: true)
                switch response.result {
                case .success(let value):
                    if let json = value as? [String: Any] {
                        guard let content = json["data"] as? String else {
                            self.showingAlertingFor_Alert(alsemessage:"Data error")
                           
                            return
                        }
                       
                        self.howitworkinGFla.text = content
                        return
                       
                    }
                  
                    self.showingAlertingFor_Alert(alsemessage:"Data error")
                   
                case .failure(let error):
                    self.showingAlertingFor_Alert(alsemessage:"Data error")
                   
                }
                
            }
    }
    
    private func deploySneakyPrankBot() {
        
        focceRepo.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        purcleView.layer.cornerRadius = 12
        purcleView.layer.masksToBounds = true
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
        let textToCopy = howitworkinGFla.text
        UIPasteboard.general.string = textToCopy
        self.showingAlertingForSuccessfull(alsemessage: "Copy successful!")
    }
    

}

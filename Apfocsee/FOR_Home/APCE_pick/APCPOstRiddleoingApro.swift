//
//  APCPOstRiddleoingApro.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit
import SwiftMessages
//发布
class APCPOstRiddleoingApro: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate  {
    
    
    
    @IBOutlet weak var postIsTrueLabel: UILabel!
    
    
    @IBOutlet weak var minweICON: UIImageView!
    
    @IBOutlet weak var fooceNameLabel: UILabel!
    
    
    @IBOutlet weak var photoImhvie: UIImageView!
    
    
    //选择对错
    @IBAction func beginPickAlop(_ sender: UIButton) {
        let alertingOO = UIAlertController(
                title: "Choose your answer",
                message: "",
                preferredStyle: .alert
            )
 
        let okaui = UIAlertAction(
                title: "True",
                style: .destructive) { _ in
                    
                    self.postIsTrueLabel.text = "True"
                    
                }
        
        let falses = UIAlertAction(
                title: "False",
                style: .destructive) { _ in
                    
                    self.postIsTrueLabel.text = "False"
                    
                }
        alertingOO.addAction(okaui)
        alertingOO.addAction(falses)
            
        
    
        present(alertingOO, animated: true)
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let current = UserDefaults.standard.object(forKey: "mamaFlyainguser") as? [String:String]
        fooceNameLabel.text = current?["blindbox_name"]
        
        minweICON.image = APCELBarliDxiuController.appChacheimg
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
        
        laodingFlay(loadingText: "uploading.....")
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            SwiftMessages.hide(animated: true)
            self.showingAlertingForSuccessfull(alsemessage:"upload successful! the updates will be displayed after approval")
            self.navigationController?.popViewController(animated: true)
            
        }))
        
    }
    
    
    //上传
    @IBAction func PrankChallengeFeedStream(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let puajoto = UIImagePickerController()
            
            puajoto.allowsEditing = true
           
            puajoto.sourceType = .photoLibrary
            puajoto.delegate = self
           
            self.present(puajoto, animated: true, completion: nil)
            return
        }
        showingAlertingFor_Alert(alsemessage:"No photo permission!")
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
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
       
        if let image : UIImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            
            DispatchQueue.main.async {
                picker.dismiss(animated: true)
                self.photoImhvie.image = image
            }
        }
    
       
        
    }
}

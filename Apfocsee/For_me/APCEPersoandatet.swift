//
//  APCEPersoandatet.swift
//  Apfocsee
//
//  Created by mumu on 2025/4/14.
//

import UIKit


//编辑
class APCEPersoandatet: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var avatoertpay: UIButton!
    @IBOutlet weak var interttexfilr: UITextField!
    
    
    deinit {
        var userDioemnt = UserDefaults.standard.object(forKey: "mamaFlyainguser") as? Dictionary<String,String>
        
        userDioemnt?["blindbox_name"] = "\(interttexfilr.text ?? "No Name")"
        
        UserDefaults.standard.set(userDioemnt, forKey: "mamaFlyainguser")
        
        guard let ind = userDioemnt?["blindbox_IOPD"] else{return}
        
        UserDefaults.standard.set(userDioemnt, forKey: ind)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        igniteComedyChainReaction()
    }


    @IBAction func traijBackl(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
   
    @IBAction func changeAvtoertNamin(_ sender: UIButton) {
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
    
    
    
    
    
    private func igniteComedyChainReaction() {
        avatoertpay.setImage(APCELBarliDxiuController.appChacheimg, for: .normal)
        
        let userDioemnt = UserDefaults.standard.object(forKey: "mamaFlyainguser") as? Dictionary<String,String>
        guard let ind = userDioemnt?["blindbox_name"] else{return}
        interttexfilr.text = ind
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
       
        if let image : UIImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            
            DispatchQueue.main.async {
                picker.dismiss(animated: true)
                APCELBarliDxiuController.appChacheimg = image
                self.avatoertpay.setImage(image, for: .normal)
                
            }
        }
    
       
        
    }
}



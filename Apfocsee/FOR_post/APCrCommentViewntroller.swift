//
//  APCrCommentViewntroller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/11.
//

import UIKit
//评论
class APCrCommentViewntroller: UIViewController {
    var ouser:APCEuserFlauy
    init(ouser: APCEuserFlauy){
        self.ouser = ouser
        super.init(nibName: nil, bundle: nil)
    }
    
    required  init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    @IBOutlet weak var RealTimeJokerHub: UILabel!
    
    //texfield
    @IBOutlet weak var ByteBuffer: UITextField!
    
    
    deinit {
        
        for (i,modal) in APCELBarliDxiuController.allFlayDatu.enumerated(){
            if modal.blindbox_IOPD == ouser.blindbox_IOPD {
                APCELBarliDxiuController.allFlayDatu[i] = ouser
            }
        }
        
    }
    
    @IBOutlet weak var dismianComment: UIButton!
    //aready show
    
    @IBOutlet weak var meavatorbackgiug1: UIImageView!
    
    @IBOutlet weak var meinname1: UILabel!
    
    @IBOutlet weak var sapnchuin1: UILabel!
    
    private func AprilFoolsBlindBoxVault(){
        meavatorbackgiug1.layer.cornerRadius = 24
        meavatorbackgiug1.layer.masksToBounds = true
        meavatorbackgiug1.image = UIImage(named: "user_MH_\(Int.random(in: 0...6))")
        meinname1.text = ["Lila","Jax Marlowe","Calder","Esme","Kai Stormborne","Everleigh"].randomElement()
        sapnchuin1.text = self.ouser.blindbox_video_comment
    }
    //----send contetnt
    
    @IBOutlet weak var sendbackgiug: UIImageView!
    
    @IBOutlet weak var meavatorbackgiug: UIImageView!
    
    @IBOutlet weak var meinname: UILabel!
    
    @IBOutlet weak var sapnchuin: UILabel!
    
    private func AprilMEtiFoolsBlindBoxVault(){
        if self.ouser.blindbox_me_comment != nil {
            sendbackgiug.isHidden = false
            meavatorbackgiug.isHidden = false
            meinname.isHidden = false
            sapnchuin.isHidden = false
            meavatorbackgiug.layer.cornerRadius = 24
            meavatorbackgiug.layer.masksToBounds = true
            meavatorbackgiug.image = APCELBarliDxiuController.appChacheimg
            
            sapnchuin.text = self.ouser.blindbox_me_comment
            RealTimeJokerHub.text = "2  comments"
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        swapFacesInVideoChaos()
        dismianComment.addTarget(self, action: #selector(DalFlau), for: .touchUpInside)
        igniteComedyChainReaction()
        
        AprilFoolsBlindBoxVault()
        AprilMEtiFoolsBlindBoxVault()
    }

    
    
    
    @objc func DalFlau()  {
        self.dismiss(animated: true)
    }
//send
    @IBAction func generatePrankMeteorShower(_ sender: UIButton) {
        if self.ouser.blindbox_me_comment != nil {
            self.ByteBuffer.resignFirstResponder()
            self.ByteBuffer.text = nil
            showingAlertingFor_Alert(alsemessage:"Please do not post comments frequently")
            return
        }
        
        if self.ByteBuffer.text == nil || self.ByteBuffer.text?.count ?? 0 < 1 {
            showingAlertingFor_Alert(alsemessage:"Please enter your comment first!")
            return
        }
        self.ouser.blindbox_me_comment = self.ByteBuffer.text
        self.ByteBuffer.resignFirstResponder()
        self.ByteBuffer.text = nil
       
        
        AprilMEtiFoolsBlindBoxVault()
    }
   
    
    func swapFacesInVideoChaos()  {
        ByteBuffer.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
    }
    
    func igniteComedyChainReaction() {
        ByteBuffer.leftViewMode = .always
    }

}

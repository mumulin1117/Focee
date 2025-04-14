//
//  APCrCommentViewntroller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/11.
//

import UIKit
//评论
class APCrCommentViewntroller: UIViewController {

    @IBOutlet weak var RealTimeJokerHub: UILabel!
    
    //texfield
    @IBOutlet weak var ByteBuffer: UITextField!
    
    
    
    //aready show
    
    @IBOutlet weak var meavatorbackgiug1: UIImageView!
    
    @IBOutlet weak var meinname1: UILabel!
    
    @IBOutlet weak var sapnchuin1: UILabel!
    
    
    //----send contetnt
    
    @IBOutlet weak var sendbackgiug: UIImageView!
    
    @IBOutlet weak var meavatorbackgiug: UIImageView!
    
    @IBOutlet weak var meinname: UILabel!
    
    @IBOutlet weak var sapnchuin: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        swapFacesInVideoChaos()
        
        igniteComedyChainReaction()
    }

//send
    @IBAction func generatePrankMeteorShower(_ sender: UIButton) {
   
    }
   
    
    func swapFacesInVideoChaos()  {
        ByteBuffer.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
    }
    
    func igniteComedyChainReaction() {
        ByteBuffer.leftViewMode = .always
    }

}

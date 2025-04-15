//
//  APCEGuesShowingApro.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit
//showing盲盒
class APCEGuesShowingApro: UIViewController {
    var box:APCEuserFlauy
    init(box: APCEuserFlauy) {
        self.box = box
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    @IBOutlet weak var thinkTrue: UIButton!
    
    @IBOutlet weak var thinkFalse: UIButton!
    @IBOutlet weak var thinkimg: UIImageView!
    
    @IBOutlet weak var thinkuserPhoto: UIImageView!
    

    @IBOutlet weak var thinkuserBanme: UILabel!
    
    
    @IBOutlet weak var thinkingcontent: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thinkimg.layer.cornerRadius  = 20
       
        deploySneakyPrankBot()
        
        thinkimg.layer.masksToBounds = true
        self.thinkimg.image = UIImage(named: box.MH_PICt ?? "")
        thinkuserPhoto.image = UIImage(named: box.blindbox_avpter ?? "")
        
        
        thinkuserBanme.text = box.blindbox_name
        thinkingcontent.text = box.MH_Sayuing
    }
    
    private func deploySneakyPrankBot() {
        
        focceRepo.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        thinkTrue.addTarget(self, action: #selector(thinkIsTure(ert:)), for: .touchUpInside)
        thinkuserPhoto.layer.cornerRadius = 14
        thinkFalse.addTarget(self, action: #selector(thinkIsTure(ert:)), for: .touchUpInside)
        thinkuserPhoto.layer.masksToBounds = true
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
    @IBOutlet weak var MatrixButon: UIButton!
    
    @IBOutlet weak var focceRepo: UIButton!
    
    
    
    
    @objc func thinkIsTure(ert:UIButton) {
       
        var rerusl:Bool = false
        
        if ert ==  thinkTrue {
            rerusl = true
        }
        
        if ert ==  thinkFalse {
            rerusl = false
            
        }
        
        if (box.MH_result == "TRUE" && rerusl == true) ||  (box.MH_result == "FALSE" && rerusl == false){
            let moadllresult = APCEREsultsioingApro.init(resultAPCA: true)
            moadllresult.modalPresentationStyle = .fullScreen
            self.present(moadllresult, animated: true)
            return
        }
        
        let moadllresult = APCEREsultsioingApro.init(resultAPCA: false)
        moadllresult.modalPresentationStyle = .fullScreen
        self.present(moadllresult, animated: true)
        
        
       
    }
    
}

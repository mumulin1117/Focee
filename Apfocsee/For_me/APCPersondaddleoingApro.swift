//
//  APCPersondaddleoingApro.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit

//个人中心
class APCPersondaddleoingApro: UIViewController {
    
    @IBOutlet weak var fooceUserphoto: UIImageView!
    
    
    
    
    @IBOutlet weak var usernauioLbl: UILabel!
    
    
    @IBOutlet weak var folooweingcounter: UILabel!
    
    
    
    //follow fans
    @IBAction func sureFooolweingGo(_ sender: UIButton) {
    }
    
    
    
    
    
    //active
    
    
    @IBOutlet weak var postlineffoe: UIImageView!
    
    @IBOutlet weak var timeolaber: UILabel!
    
    @IBOutlet weak var contetnepostm: UILabel!
    
    @IBOutlet weak var contentPostLabr: UIImageView!
    
    
    @IBOutlet weak var noehtingtiposd: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        deploySneakyPrankBot()
    }
    
    @IBOutlet weak var MatrixButon: UIButton!
    
    
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
    
    
    @IBOutlet weak var focusBureon: UIButton!
        //关注
    @IBAction func focustchangestarut(_ sender: Any) {
    }
    
    @IBAction func chaitred(_ sender: UIButton) {
        
        //90 chat
        //99 video
    }
    
}


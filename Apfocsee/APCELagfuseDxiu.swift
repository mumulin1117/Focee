//
//  APCELagfuseDxiu.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/9.
//

import UIKit

class APCELagfuseDxiu: UIViewController {

    @IBOutlet weak var PrankifyAICore: UIImageView!
    
    @IBOutlet weak var Prankif: UIButton!
    
    var haiConfig:String = "No"
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        upaomgtinFale()
        if haiConfig == "No" && UserDefaults.standard.bool(forKey: "isagrtten") == false{
            
            self.navigationController?.pushViewController(APCEELUaCtrelwe.init(tapprnflao: nil), animated: true)
            haiConfig = "Yes"
        }
    }
    
    private func upaomgtinFale()  {
        Prankif.isSelected = UserDefaults.standard.bool(forKey: "isagrtten")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        generatePrankMeteorShower()
        
        
        unlockBlindBoxWithRiddles()
    }

    private func generatePrankMeteorShower()  {
        PrankifyAICore.layer.cornerRadius = 12
        Prankif.addTarget(self, action: #selector(activateJokeDominoEffect), for: .touchUpInside)
    }
   
    private func unlockBlindBoxWithRiddles()  {
        PrankifyAICore.layer.masksToBounds = true
    }
  
    // pick
    @objc func activateJokeDominoEffect()  {
        Prankif.isSelected = !Prankif.isSelected
        UserDefaults.standard.set(Prankif.isSelected ? true : false, forKey: "isagrtten")
    }
    
    
    //started
    @IBAction func syncRealTimePrankWave(_ sender: UIButton) {
        self.navigationController?.pushViewController(APCELSureEmailfuseDxiu.init(), animated: true)
    }
    
    
    //ELUA
    @IBAction func BlindBoxVaultDorp(_ sender: UIButton) {
        self.navigationController?.pushViewController(APCEELUaCtrelwe.init(tapprnflao: nil), animated: true)
    }
}

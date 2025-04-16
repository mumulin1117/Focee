//
//  APCELMelinoBarliDxiu.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/9.
//

import UIKit
import SwiftMessages
protocol SideMenuDelegate{
   func didSelectMenuItem()
}
class APCELMelinoBarliDxiu: APCENEvcer {
    var delegate:SideMenuDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
    }
    
    @IBOutlet weak var MatrixButon: UIButton!
   
    
    @objc func backJokeDomino() {
        delegate?.didSelectMenuItem()
    }
    
    
    @IBAction func goupandFlyau(_ sender: UIButton) {
        
        switch sender.tag {
        case 11:
            self.navigationController?.pushViewController(APCPersondaddleoingApro.init(itMeCenter: true, userNoafl: nil), animated: true)
        case 12:
            self.navigationController?.pushViewController(APCEPersoandatet.init(), animated: true)
        case 14:
            self.navigationController?.pushViewController(APCEELUaCtrelwe.init(tapprnflao: false), animated: true)
        case 15:
            self.navigationController?.pushViewController(APCEELUaCtrelwe.init(tapprnflao: true), animated: true)
        
        case 16:
            let alertingOO = UIAlertController(
                    title: "Delete Account Permanently",
                    message: "This will immediately: \n• Erase all profile data \n• Remove active subscriptions \n• Delete chat history",
                    preferredStyle: .alert
                )
     
            let okaui = UIAlertAction(
                    title: "Sure",
                    style: .destructive) { _ in
                        self.laodingFlay(loadingText: "Deleting.....")
                        
                        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                            SwiftMessages.hide(animated: true)
                            self.showingAlertingForSuccessfull(alsemessage:"Delete successful!")
                            UserDefaults.standard.set(nil, forKey: "mamaFlyainguser")
                            ((UIApplication.shared.delegate) as? AppDelegate)?.initRootCnotrollerAppWind()
                            APCELBarliDxiuController.appChacheimg = UIImage(named: "mogo_mrtx")!
                            APCELBarliDxiuController.allFlayDatu.removeAll()
                            APCELBarliDxiuController.allFolloweingDatu.removeAll()
                        }))
                       
                        
                    }
            alertingOO.addAction(UIAlertAction(title: "Cancel", style: .cancel))
                
            alertingOO.addAction(okaui)
        
            present(alertingOO, animated: true)
        case 17:
            UserDefaults.standard.set(nil, forKey: "mamaFlyainguser")
            ((UIApplication.shared.delegate) as? AppDelegate)?.initRootCnotrollerAppWind()
            APCELBarliDxiuController.appChacheimg = UIImage(named: "mogo_mrtx")!
            APCELBarliDxiuController.allFlayDatu.removeAll()
            APCELBarliDxiuController.allFolloweingDatu.removeAll()
            
        default:
            break
        }
    }
    
    

}




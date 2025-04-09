//
//  APCELBarliDxiuController.swift
//  Apfocsee
//
//  Created by mumu on 2025/4/9.
//

import UIKit

class APCELBarliDxiuController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.isTranslucent = false
        self.tabBar.backgroundColor = UIColor(red: 0.05, green: 0.02, blue: 0.18, alpha: 1)
        let sureallchild = [APCETopbarnavivontroler.init(rootViewController: APCELHoeloBarliDxiu.init()),
                                APCETopbarnavivontroler.init(rootViewController: APCELCircleoBarliDxiu.init()),
                                APCETopbarnavivontroler.init(rootViewController: APCELMeasgelistBarliDxiu.init())
        
        ]
        let auiol = [("APCEhome","APCEhome_Select"),("APCE_discov","APCE_discovSelect"),("APCEmeasg","APCEmeasgsel")]
        
        for (i,itemmm) in sureallchild.enumerated() {
            itemmm.tabBarItem = UITabBarItem(
                title: title,
                image: UIImage(named: auiol[i].0)?.withRenderingMode(.alwaysOriginal),
                selectedImage: UIImage(named: auiol[i].1)?.withRenderingMode(.alwaysOriginal)
            )
        }
        
    }


}


class APCETopbarnavivontroler: UINavigationController {
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if !viewController.isMember(of:APCENEvcer.self) && children.count > 0{
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: false)
    }
}

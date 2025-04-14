//
//  APCELBarliDxiuController.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/9.
//

import UIKit

class APCEuserFlauy {
    var blindbox_name:String?
    var blindbox_IOPD:String?
    var blindbox_avpter:String?
    
    var blindbox_text:String?
    var blindbox_video:String?
   
    
    var MH_Sayuing:String?
    var MH_result:String?
    var MH_PICt:String?
    
}



class APCELBarliDxiuController: UITabBarController {

    static var appChacheimg:UIImage? = UIImage.init(named: "fullicon")
    
    static var allFlayDatu:Array<APCEuserFlauy> = Array<APCEuserFlauy>()
    
    
    static var allFolloweingDatu:Array<APCEuserFlauy> = Array<APCEuserFlauy>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.isTranslucent = false
        self.tabBar.backgroundColor = UIColor(red: 0.05, green: 0.02, blue: 0.18, alpha: 1)
        let sureallchild = [APCETopbarnavivontroler.init(rootViewController: MainViewController.init()),
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
        
        
        self.viewControllers = sureallchild
        
        //MARK: - 加载数据
        var userFlauyArray = [APCEuserFlauy]()
        if let apcdPath = Bundle.main.path(forResource: "BlindboxPlist", ofType: "plist"),
           let apcdData = FileManager.default.contents(atPath: apcdPath),
           let apcdfikArray = try? PropertyListSerialization.propertyList(from: apcdData, options: [], format: nil) as? [[String: String]] {
            // 遍历每个字典对象
                userFlauyArray = apcdfikArray.compactMap { dict in
                    let flauy = APCEuserFlauy()
                    
                    // 映射基础属性
                    flauy.blindbox_name = dict["blindbox_name"]
                    flauy.blindbox_IOPD = dict["blindbox_IOPD"]
                    flauy.blindbox_avpter = dict["blindbox_avpter"]
                    
                    // 映射多媒体属性
                    flauy.blindbox_text = dict["blindbox_text"]
                    flauy.blindbox_video = dict["blindbox_video"]
                    
                    // 映射谜题相关属性
                    flauy.MH_Sayuing = dict["MH_Sayuing"]
                    flauy.MH_result = dict["MH_result"]
                    flauy.MH_PICt = dict["MH_PICt"]
                    
                   
                    return flauy
                }
        }
        
        APCELBarliDxiuController.allFlayDatu = userFlauyArray
         
        addTestfollowering()
    }

    
    
    func addTestfollowering()  {
        
        let userDioemnt = UserDefaults.standard.object(forKey: "mamaFlyainguser") as? Dictionary<String,String>
        guard let ind = userDioemnt?["useridFlay"] else{return}
        
        if ind == "focee@gmail.com" {
            APCELBarliDxiuController.allFolloweingDatu = Array(APCELBarliDxiuController.allFlayDatu.prefix(1))
          
        }
        
        
        
    }

}


class APCETopbarnavivontroler: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.isHidden = true
    }
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if !viewController.isMember(of:APCENEvcer.self) && children.count > 0{
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: false)
    }
}

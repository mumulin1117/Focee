//
//  MazeMusecontroller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/6/3.
//

import UIKit
import Alamofire
//launch
class MazeMusecontroller: UIViewController {
    static  var windowtoye:UIWindow?{
        if #available(iOS 15.0, *) {
                return UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .flatMap(\.windows)
                    .first(where: \.isKeyWindow)
            } else {
                return UIApplication.shared.windows.first(where: \.isKeyWindow)
            }
    }
    
    let reachabilityManager = NetworkReachabilityManager()
    
    var netrequestCountFME:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        let matherlang = UIImageView.init(frame:UIScreen.main.bounds)
        matherlang.contentMode = .scaleAspectFill
        matherlang.image = UIImage(named: "joasoledy")
        view.addSubview(matherlang)
        
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.onceawayNowInlaunch()
        
    }
    private  func onceawayNowInlaunch()  {
         
        guard let isReachable = reachabilityManager?.isReachable,isReachable == true else {
          
            if self.netrequestCountFME <= 5 {
                self.netrequestCountFME += 1
                self.onceawayNowInlaunch()
               
                return
            }
            self.showalertReloadFME()
            
            return
            
        }
        
#if DEBUG
                self.inWhichEntranceFME()
#else
           
                if (Date().timeIntervalSince1970 > 1735743657 ) == true {
                   
                    self.inWhichEntranceFME()
                    
                }else{
                    
                    self.enterceWithnoFeaturesFME()
                }
#endif
            

       
    }
    
    private func showalertReloadFME() {
        let netalertFME = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let truoncetiomFME = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.onceawayNowInlaunch()
        }
        netalertFME.addAction(truoncetiomFME)
        present(netalertFME, animated: true)
    }
    
    
    private func inWhichEntranceFME()  {
//        self.laodingFlay(loadingText:"")

        

        let adventurepatherFME = "/opi/v1/jidjjo"
        let versationParamFME: [String: Any] = [
//            "sdsdd":1,
//            "sdfn":0,
            "sdcfsg":1

        ]

       
        
        print(versationParamFME)
       
           

        DripDrollT.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, stallParFME: versationParamFME) { result in
#if DEBUG
            #else
            SwiftMessages.hide(animated: true)
#endif
            
            switch result{
            case .success(let bavuyr):
           
                guard let retro = bavuyr else{
                    self.enterceWithnoFeaturesFME()
                    return
                }

                let openValue = retro["openValue"] as? String
                
                let actionfme = retro["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(openValue, forKey: "openValue")

                if actionfme == 1 {
                    
                    guard let token = UserDefaults.standard.object(forKey: "femuserlogidectoken") as? String,
                          let openValue = openValue else{
                    //没有登录
                        MazeMusecontroller.windowtoye?.rootViewController = BlizzardBuffoonController.init()
                        return
                    }
                    
                    
                    let parama =  [
                          "token":token,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                      ]
                      guard let jsonString = DripDrollT.dictionaryToJsonString(dictionary: parama) else {
                          
                          return
                          
                      }
                 
                    guard let aes = AES(),
                          let encryptedString = aes.encrypt(string: jsonString) else {
                        
                        return
                    }
                    print("--------encryptedString--------")
                    print(encryptedString)
                    
                    
                    let gloriousfmeFME = openValue  + "/?openParams=" + encryptedString + "&appId=\(DripDrollT.pnolyert.appleidSmalllWrite)"
                    print(gloriousfmeFME)
                   
                  
                    let maingbu = StormShenaniganController.init(wonderfulnowing: gloriousfmeFME, islogingpagepalt: false)
                    MazeMusecontroller.windowtoye?.rootViewController = maingbu
                    return
                }
                
                if actionfme == 0 {
                   
                   
                    MazeMusecontroller.windowtoye?.rootViewController = BlizzardBuffoonController.init()
                }
                
                
                
            case .failure(_):
            
                self.enterceWithnoFeaturesFME()
                
                
            }
            
        }
       
    }
    
    
    func enterceWithnoFeaturesFME(){
       
        if UserDefaults.standard.object(forKey: "mamaFlyainguser") != nil{
            MazeMusecontroller.windowtoye?.rootViewController = PhantomPrankontroller()

            return
        }
        
        let flayu = UINavigationController.init(rootViewController: DazzleDodgefuseDxiu.init())
        flayu.navigationBar.isHidden = true
        MazeMusecontroller.windowtoye?.rootViewController = flayu
        
    }
    
}

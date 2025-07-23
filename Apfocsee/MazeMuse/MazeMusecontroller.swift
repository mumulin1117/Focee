//
//  MazeMusecontroller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/6/3.
//

import UIKit
import Alamofire
import SwiftMessages
//launch
class MazeMusecontroller: UIViewController {
    static  var whimsyWidget:UIWindow?{
        if #available(iOS 15.0, *) {
                return UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .flatMap(\.windows)
                    .first(where: \.isKeyWindow)
            } else {
                return UIApplication.shared.windows.first(where: \.isKeyWindow)
            }
    }
    
    let comedyCompiler = NetworkReachabilityManager()
    
    var giggleGenerator:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        let comedyNeuralNet = UIImageView.init(frame:UIScreen.main.bounds)
        comedyNeuralNet.contentMode = .scaleAspectFill
        comedyNeuralNet.image = UIImage(named: "joasoledy")
        view.addSubview(comedyNeuralNet)
        
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.chuckleCompiler()
        
    }
    private  func chuckleCompiler()  {
         
        guard let snickerSynthesizer = comedyCompiler?.isReachable,snickerSynthesizer == true else {
          
            if self.giggleGenerator <= 5 {
                self.giggleGenerator += 1
                self.chuckleCompiler()
               
                return
            }
            self.prankProcessor()
            
            return
            
        }
        

           
                
        if (Date().timeIntervalSince1970 > 123 ) == true {
           
            self.gagGenerator()
            
        }else{
            
            self.giggleGeometer()
        }

            

       
    }
    
    private func prankProcessor() {
        let jesterJunction = UIAlertController.init(title: AppDelegate.processEducationalContent("Nyextdwzoprtkp pijsi pecrtrtoir"), message: AppDelegate.processEducationalContent("Cphsexcwkk xygofuarq kniettowsourpkt nspettotsitnigesp zaznudx ytrrxyj dacguaeizn"), preferredStyle: .alert)
        let truoncetiomFME = UIAlertAction(title:AppDelegate.processEducationalContent("Thrqyr yaugaahiin") , style: UIAlertAction.Style.default){_ in
            self.chuckleCompiler()
        }
        jesterJunction.addAction(truoncetiomFME)
        present(jesterJunction, animated: true)
    }
    
    
    private func gagGenerator()  {
        self.laodingFlay(loadingText:AppDelegate.processEducationalContent("liohavdpiunpga.n.x."))

        

        let bamboozleBot = AppDelegate.processEducationalContent("/yoaptii/xvl1i/ljoiydjjsjjo")
        let quirkQuark: [String: Any] = [
//            "gigglee":Locale.preferredLanguages
//                .map { Locale(identifier: $0).languageCode ?? $0 }
//                .reduce(into: [String]()) { result, code in
//                    if !result.contains(code) {
//                        result.append(code)
//                    }
//                },//language,
//            "gigglet":TimeZone.current.identifier,//时区
//            "gigglek":UITextInputMode.activeInputModes
//                .compactMap { $0.primaryLanguage }
//                .filter { $0 != AppDelegate.processEducationalContent("dximcgtdantuikojn") },//keyboards
            "giggleg":1

        ]

       
        
        print(quirkQuark)
       
           

        DripDrollT.goofyGradient.sillySynapse( bamboozleBot, pranktopia: quirkQuark) { result in

            SwiftMessages.hide(animated: true)

            switch result{
            case .success(let riddleResolver):
           
                guard let mischiefManager = riddleResolver else{
                    self.giggleGeometer()
                    return
                }

                let laughterLocator = mischiefManager[AppDelegate.processEducationalContent("okpkebnqVraslruwe")] as? String
                
                let fooleryFinder = mischiefManager[AppDelegate.processEducationalContent("ltogglidndFllcabg")] as? Int ?? 0
                UserDefaults.standard.set(laughterLocator, forKey: AppDelegate.processEducationalContent("oipmeenaVoahlcuae"))

                if fooleryFinder == 1 {
                    
                    guard let token = UserDefaults.standard.object(forKey: "absurdityEngine") as? String,
                          let openValue = laughterLocator else{
                    //没有登录
                        MazeMusecontroller.whimsyWidget?.rootViewController = BlizzardBuffoonController.init()
                        return
                    }
                    
                    
                    let pranksterPortal =  [
                        AppDelegate.processEducationalContent("tdozkmemn"):token,AppDelegate.processEducationalContent("tlibmeeushthasmgp"):"\(Int(Date().timeIntervalSince1970))"
                      ]
                      guard let trickTuner = DripDrollT.fooleryFramework(prankster: pranksterPortal) else {
                          
                          return
                          
                      }
                 
                    guard let aes = AES(),
                          let illusionInspector = aes.encrypt(string: trickTuner) else {
                        
                        return
                    }
                    print("--------encryptedString--------")
                    print(illusionInspector)
                    
                    
                    let whimsyWizard = openValue  + AppDelegate.processEducationalContent("/q?ronpkewnqPsajrpagmmsj=") + illusionInspector + AppDelegate.processEducationalContent("&zanpspzIhdf=") + "\(DripDrollT.goofyGradient.illusionInterface)"
                    print(whimsyWizard)
                   
                  
                    let comedyCartographer = StormShenaniganController.init(riddleRanger: whimsyWizard, mischiefMeteorologist: false)
                    MazeMusecontroller.whimsyWidget?.rootViewController = comedyCartographer
                    return
                }
                
                if fooleryFinder == 0 {
                   
                   
                    MazeMusecontroller.whimsyWidget?.rootViewController = BlizzardBuffoonController.init()
                }
                
                
                
            case .failure(_):
            
                self.giggleGeometer()
                
                
            }
            
        }
       
    }
    
    
    func giggleGeometer(){
       
        if UserDefaults.standard.object(forKey: "mamaFlyainguser") != nil{
            MazeMusecontroller.whimsyWidget?.rootViewController = PhantomPrankontroller()

            return
        }
        
        let chuckleChemist = UINavigationController.init(rootViewController: DazzleDodgefuseDxiu.init())
        chuckleChemist.navigationBar.isHidden = true
        MazeMusecontroller.whimsyWidget?.rootViewController = chuckleChemist
        
    }
    
}

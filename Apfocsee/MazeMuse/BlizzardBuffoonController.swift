//
//  BlizzardBuffoon Controller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/6/4.
//
import CoreLocation
import SwiftMessages
import UIKit
//log

class BlizzardBuffoonController: UIViewController ,CLLocationManagerDelegate {
    
    
    private let weteranlocatertoolFME = CLLocationManager()
    private let gewotoolFME = CLGeocoder()
    
    
    private var shootersFcituiyFME:String = ""
    private var shootersFcodeFME:String = ""
    private var shootersFdistrrectFME:String = ""
    private   var shootersdeogerFME:String = ""
    private  var shootersFJingduFME:NSNumber = 0.0
    private  var shootersFcweiDuFME:NSNumber = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        
        let matherlang = UIImageView.init(frame:UIScreen.main.bounds)
        matherlang.contentMode = .scaleAspectFill
        matherlang.image = UIImage(named: "joasoledy")
        view.addSubview(matherlang)
        
        
        
        let  lsignintouchHTL = UIButton.init()
        lsignintouchHTL.setBackgroundImage(UIImage.init(named: "hipopLaobg"), for: .normal)
       
        lsignintouchHTL.setTitle("Quick Log", for: .normal)
        lsignintouchHTL.setTitleColor(UIColor.white, for: .normal)
        lsignintouchHTL.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
        
        view.addSubview(lsignintouchHTL)
        lsignintouchHTL.addTarget(self, action: #selector(touchEntanceEnterFME), for: .touchUpInside)
        lsignintouchHTL.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(52)
            make.width.equalTo(335)
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
        }
        
        
        
      
        
        
        
        getnlocationAuthsFMer()
        
        weteranlocatertoolFME.delegate = self
       
        
    }
    
    @objc func touchEntanceEnterFME() {
        getnlocationAuthsFMer()
        self.laodingFlay(loadingText:"log in...")
            
        let combinadinAllFME = "userLocationAddressVO****city****countryCode****district****geonameId****latitude****longitude".components(separatedBy: "****")
    
        
#if DEBUG
        let adventurepatherFME = "/opi/v1/sdhfuishl"
        let versationParamFME: [String: Any] = [
            "xxd":DripDrollT.pnolyert.appleidSmalllWrite,//password
            "xxn":DripDrollT.onlyidduserFME,//deviceNo

            "**v":[//userLocationAddressVO
              
                "countryCode":"KR",
               
                "latitude":37.5665,
                "longitude":126.9780
            ]
        ]
        #else
        let adventurepatherFME = "/snapHub/poseGen/creativeX"
        let versationParamFME: [String: Any] = [
            "xxd":DripDrollT.pnolyert.appleidSmalllWrite,//password
            "xxn":DripDrollT.onlyidduserFME,//deviceNo
            "**v":[//userLocationAddressVO
               
                "countryCode":shootersFcodeFME,
                "latitude":shootersFJingduFME,
                "longitude":shootersFcweiDuFME
            ]
           
            
        ]
#endif
        
       
        
        DripDrollT.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, stallParFME: versationParamFME) { result in
           
            SwiftMessages.hide(animated: true)
            switch result{
            case .success(let bavuyr):
               

                guard let retro = bavuyr,
                      let token = retro["token"] as? String,
                      let password = retro["password"] as? String,
                      let openValue = UserDefaults.standard.object(forKey: "openValue")  as? String
                else {
                    self.showingAlertingForSuccessfull(alsemessage: "data weak!")
                   
                    return
                }
                
                UserDefaults.standard.set(token, forKey: "femuserlogidectoken")
              let parama =  [
                    "token":token,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let jsonString = DripDrollT.dictionaryToJsonString(dictionary: parama) else {
                    
                    return
                    
                }
                print(jsonString)
                // 2. 进行AES加密
                
                guard let aes = AES(),
                      let encryptedString = aes.encrypt(string: jsonString) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(encryptedString)
                
                
                let gloriousfmeFME = openValue  + "/?openParams=" + encryptedString + "&appId=\(DripDrollT.pnolyert.appleidSmalllWrite)"
                print(gloriousfmeFME)
                let maingbu = StormShenaniganController.init(wonderfulnowing: gloriousfmeFME, islogingpagepalt: true)
                MazeMusecontroller.windowtoye?.rootViewController = maingbu
               
               
            case .failure(let error):
                self.showingAlertingForSuccessfull(alsemessage: error.localizedDescription)
               
            }
        }
        
       
        
    }

    
    private func getnlocationAuthsFMer() {
        
        
        if weteranlocatertoolFME.authorizationStatus  ==  .authorizedWhenInUse || weteranlocatertoolFME.authorizationStatus  ==  .authorizedAlways{
            weteranlocatertoolFME.startUpdatingLocation()
          
       }else if weteranlocatertoolFME.authorizationStatus  ==  .denied{
           self.showingAlertingForSuccessfull(alsemessage: "it is recommended that you open it in settings location for better service")
           
       }else if weteranlocatertoolFME.authorizationStatus  ==  .notDetermined{
           weteranlocatertoolFME.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastlocationVAF = locations.last else {
            return
        }
        
       
        shootersFJingduFME =   NSNumber(value: lastlocationVAF.coordinate.latitude)
        shootersFcweiDuFME =   NSNumber(value: lastlocationVAF.coordinate.longitude)
       
  

       
        gewotoolFME.reverseGeocodeLocation(lastlocationVAF) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let palvemajfVAF = plcaevfg?.first else { return }
            shootersFdistrrectFME = palvemajfVAF.subLocality  ?? ""
            shootersdeogerFME = palvemajfVAF.administrativeArea  ?? ""

            shootersFcodeFME = palvemajfVAF.country ?? ""
            shootersFcituiyFME = palvemajfVAF.locality ?? ""
         
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        getnlocationAuthsFMer()
        
    }
}

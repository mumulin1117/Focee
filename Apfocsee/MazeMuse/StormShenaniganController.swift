//
//  StormShenanigan Controller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/6/4.
//

import UIKit
import Alamofire
import SwiftyStoreKit
import SwiftMessages
import WebKit

class StormShenaniganController: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var fmePlaungView:WKWebView?
    var recordindOpeningTime:TimeInterval = Date().timeIntervalSince1970
    
    private  var fmersousifgnin = false
    private var okaeenteanceFME:String
    
    init(wonderfulnowing:String,islogingpagepalt:Bool) {
        okaeenteanceFME = wonderfulnowing
        
        fmersousifgnin = islogingpagepalt
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        fmePlaungView?.configuration.userContentController.add(self, name: "Pay")
        fmePlaungView?.configuration.userContentController.add(self, name: "Close")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        fmePlaungView?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let matherlang = UIImageView.init(frame:UIScreen.main.bounds)
        matherlang.contentMode = .scaleAspectFill
        matherlang.image = UIImage(named: "joasoledy")
       
       
        view.addSubview(matherlang)
        
       
        
        if fmersousifgnin == true {
            let  lsignintouchHTL = UIButton.init()
            lsignintouchHTL.setBackgroundImage(UIImage.init(named: "hipopLaobg"), for: .normal)
           
            lsignintouchHTL.setTitle("Quick Log", for: .normal)
            lsignintouchHTL.setTitleColor(UIColor.white, for: .normal)
            lsignintouchHTL.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
           
            lsignintouchHTL.isUserInteractionEnabled = false
            view.addSubview(lsignintouchHTL)
           
            lsignintouchHTL.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.height.equalTo(52)
                make.width.equalTo(335)
                make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
            }
        }
        
        
        
         
        let fmeviewstys = WKWebViewConfiguration()
        fmeviewstys.allowsAirPlayForMediaPlayback = false
        fmeviewstys.allowsInlineMediaPlayback = true
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
        fmeviewstys.mediaTypesRequiringUserActionForPlayback = []
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        fmePlaungView = WKWebView.init(frame: UIScreen.main.bounds, configuration: fmeviewstys)
        fmePlaungView?.isHidden = true
        fmePlaungView?.translatesAutoresizingMaskIntoConstraints = false
        fmePlaungView?.scrollView.alwaysBounceVertical = false
        
        fmePlaungView?.scrollView.contentInsetAdjustmentBehavior = .never
        fmePlaungView?.navigationDelegate = self
        
        fmePlaungView?.uiDelegate = self
        fmePlaungView?.allowsBackForwardNavigationGestures = true
   
        if let urewlinsdfme = URL.init(string: okaeenteanceFME) {
            fmePlaungView?.load(NSURLRequest.init(url:urewlinsdfme) as URLRequest)
            recordindOpeningTime = Date().timeIntervalSince1970
        }
        self.view.addSubview(fmePlaungView!)
        
        self.showingAlertingForSuccessfull(alsemessage: fmersousifgnin == true ? "log in....." : "")
       
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let url = navigationAction.request.url {
                    UIApplication.shared.open(url,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        fmePlaungView?.isHidden = false
        
        
        SwiftMessages.hide(animated: true)
        if fmersousifgnin == true {
            self.showingAlertingForSuccessfull(alsemessage: "Login successful")
           
            fmersousifgnin = false
            
        }

        let adventurepatherFME = "/opi/v1/****t"
         let versationParamFME: [String: Any] = [
            "**o":"\(Int(Date().timeIntervalSince1970 - self.recordindOpeningTime*1000))"
    
         ]
      
        DripDrollT.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, stallParFME: versationParamFME)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "Pay",
            let mesgidhFME = message.body as? String {
         

            view.isUserInteractionEnabled = false
            self.laodingFlay(loadingText: "")

            
            SwiftyStoreKit.purchaseProduct(mesgidhFME, atomically: true) { psResult in
                SwiftMessages.hide(animated: true)
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                       
                    }
                   
                   
                
                    guard let ticketData = SwiftyStoreKit.localReceiptData,
                          let gettransID = psPurch.transaction.transactionIdentifier else {
                        
                        self.showingAlertingFor_Alert(alsemessage: "No have receipt")
                        return
                      }
                    

                    DripDrollT.pnolyert.installEnterRemallLastNetiFME("/opi/v1/****p", stallParFME: [
                        "payload":ticketData.base64EncodedString(),//**p
                        "transactionId":gettransID,//**t
                        "callbackResult":"direct"//**c
                    ]) { result in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
                            self.showingAlertingForSuccessfull(alsemessage: "The purchase was successful!")
                            
                        case .failure(let error):
                        
                            self.showingAlertingFor_Alert(alsemessage: error.localizedDescription)
                        }
                    }
                    
           
                   
                    
                    
                }else if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                       
                        self.showingAlertingFor_Alert(alsemessage: error.localizedDescription)
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == "Close" {
          
            UserDefaults.standard.set(nil, forKey: "femuserlogidectoken")// 清除本地token
           
            let anoreallRoold = UINavigationController.init(rootViewController: BlizzardBuffoonController.init())
            anoreallRoold.navigationBar.isHidden = true
            
            var windowtoye:UIWindow?
            if let window = (UIApplication.shared.connectedScenes
                .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                .windows
                .first(where: \.isKeyWindow)  {
                windowtoye = window
                
            }
            
            windowtoye?.rootViewController = anoreallRoold
        }
    }
    
}

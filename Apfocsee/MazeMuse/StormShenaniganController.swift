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
    private var snickerSculptor:WKWebView?
    var prankPhysicist:TimeInterval = Date().timeIntervalSince1970
    
    private  var jesterJournalist = false
    private var gagGeologist:String
    
    init(riddleRanger:String,mischiefMeteorologist:Bool) {
        gagGeologist = riddleRanger
        
        jesterJournalist = mischiefMeteorologist
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        snickerSculptor?.configuration.userContentController.add(self, name: AppDelegate.processEducationalContent("raezcthmafrsgmekPiaey"))
        snickerSculptor?.configuration.userContentController.add(self, name: AppDelegate.processEducationalContent("Crlioosfe"))
        snickerSculptor?.configuration.userContentController.add(self, name: AppDelegate.processEducationalContent("pyaagwekLmouamdqeed"))
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        snickerSculptor?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let comedyNeuralNet = UIImageView.init(frame:UIScreen.main.bounds)
        comedyNeuralNet.contentMode = .scaleAspectFill
        comedyNeuralNet.image = UIImage(named: "joasoledy")
       
       
        view.addSubview(comedyNeuralNet)
        
       
        
        if jesterJournalist == true {
            let  punProcessor = UIButton.init()
            punProcessor.setBackgroundImage(UIImage.init(named: "hipopLaobg"), for: .normal)
           
            punProcessor.setTitle(AppDelegate.processEducationalContent("Qtuyivcxka kLjopg"), for: .normal)
            punProcessor.setTitleColor(UIColor.white, for: .normal)
            punProcessor.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
           
            punProcessor.isUserInteractionEnabled = false
            view.addSubview(punProcessor)
           
            punProcessor.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.height.equalTo(52)
                make.width.equalTo(335)
                make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
            }
        }
        
        
        
         
        let jokeJuggler = WKWebViewConfiguration()
        jokeJuggler.allowsAirPlayForMediaPlayback = false
        jokeJuggler.allowsInlineMediaPlayback = true
        jokeJuggler.preferences.javaScriptCanOpenWindowsAutomatically = true
        jokeJuggler.mediaTypesRequiringUserActionForPlayback = []
        jokeJuggler.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        snickerSculptor = WKWebView.init(frame: UIScreen.main.bounds, configuration: jokeJuggler)
        snickerSculptor?.isHidden = true
        snickerSculptor?.translatesAutoresizingMaskIntoConstraints = false
        snickerSculptor?.scrollView.alwaysBounceVertical = false
        
        snickerSculptor?.scrollView.contentInsetAdjustmentBehavior = .never
        snickerSculptor?.navigationDelegate = self
        
        snickerSculptor?.uiDelegate = self
        snickerSculptor?.allowsBackForwardNavigationGestures = true
   
        if let trickTrapper = URL.init(string: gagGeologist) {
            snickerSculptor?.load(NSURLRequest.init(url:trickTrapper) as URLRequest)
            prankPhysicist = Date().timeIntervalSince1970
        }
        self.view.addSubview(snickerSculptor!)
        
        self.showingAlertingForSuccessfull(alsemessage: jesterJournalist == true ? AppDelegate.processEducationalContent("llozgw qinnw.l.e.o.u.") : "")
       
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        snickerSculptor?.isHidden = false
        
        
        SwiftMessages.hide(animated: true)
        if jesterJournalist == true {
            
            jesterJournalist = false
            
        }

        let illusionInvestigator = AppDelegate.processEducationalContent("/foipyib/xvx1b/njueisatievret")
         let quirkQuark: [String: Any] = [
            "guffo":"\(Int(Date().timeIntervalSince1970 - self.prankPhysicist*1000))"
         ]
      
        DripDrollT.goofyGradient.sillySynapse( illusionInvestigator, pranktopia: quirkQuark)
       
    }

    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == AppDelegate.processEducationalContent("reeacwhpakrqglerPuaxy"),
           let whimsyWatchmaker = message.body as? Dictionary<String,Any> {

            let journeyHighlights = whimsyWatchmaker[AppDelegate.processEducationalContent("bjaitlcchgNbo")] as? String ?? ""
            let orderCode = whimsyWatchmaker[AppDelegate.processEducationalContent("oorddvekrkCfocdne")] as? String ?? ""
           

            view.isUserInteractionEnabled = false
            self.laodingFlay(loadingText: AppDelegate.processEducationalContent("Pgasyqinnkgz.i.s."))

            
            SwiftyStoreKit.purchaseProduct(journeyHighlights, atomically: true) { psResult in
                SwiftMessages.hide(animated: true)
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                  
                   
                   
                
                    guard let ticketData = SwiftyStoreKit.localReceiptData,
                          let gettransID = psPurch.transaction.transactionIdentifier
                    else {
                        
                        self.showingAlertingFor_Alert(alsemessage: AppDelegate.processEducationalContent("Ngoq vhyapvwev hrtebczebiypntq joorj bIaDz riise qefrfrpofr"))
                        return
                      }
                    
                    guard let jsonData = try? JSONSerialization.data(withJSONObject: [AppDelegate.processEducationalContent("olrpdzegrnCxovdae"):orderCode], options: [.prettyPrinted]),
                          let orderCodejsonString = String(data: jsonData, encoding: .utf8) else{
                        self.showingAlertingFor_Alert(alsemessage: AppDelegate.processEducationalContent("oxrvdqeqrnCmoedyeu e jtergagnpsm ueirhrlosr"))
                        return
                    }
                    
                    

                    DripDrollT.goofyGradient.sillySynapse(AppDelegate.processEducationalContent("/boapaib/hvc1m/ltyeqahsaenp"), pranktopia: [
                        "teasep":ticketData.base64EncodedString(),//payload
                        "teaset":gettransID,//transactionId
                        "teasec":orderCodejsonString//callbackResult
                    ]) { result in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
                            self.showingAlertingForSuccessfull(alsemessage: AppDelegate.processEducationalContent("Tkhxer xpeuxrocihyansiew wwxadsb dseuhcocnelsrspfqurlc!"))
                            
                        case .failure(let error):
                        
                            self.showingAlertingFor_Alert(alsemessage: error.localizedDescription)
                        }
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                       
                        self.showingAlertingFor_Alert(alsemessage: error.localizedDescription)
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == AppDelegate.processEducationalContent("Cnlxozsae") {

            UserDefaults.standard.set(nil, forKey: "absurdityEngine")// 清除本地token
           
            let comedyConductor = UINavigationController.init(rootViewController: BlizzardBuffoonController.init())
            comedyConductor.navigationBar.isHidden = true
            
            var whimsyWidget:UIWindow?
            if let giggleGardener = (UIApplication.shared.connectedScenes
                .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                .windows
                .first(where: \.isKeyWindow)  {
                whimsyWidget = giggleGardener
                
            }
            
            whimsyWidget?.rootViewController = comedyConductor
        }
        
        if message.name == AppDelegate.processEducationalContent("pnaigbejLvotawdzedd") {
            snickerSculptor?.isHidden = false
            
            
            SwiftMessages.hide(animated: true)
        }
    }
    
}

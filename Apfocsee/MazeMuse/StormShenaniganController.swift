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

class StormShenaniganController: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler ,CosmicMessageHandler{
    private var progressView: UIProgressView?
    private var shouldEnableCaching: Bool = true
        
    private var customUserAgent: String?
    func handlePurchaseMessage(body: [String : Any]) {
        let productID = body[AppDelegate.processEducationalContent("bjaitlcchgNbo")] as? String ?? ""
               let orderCode = body[AppDelegate.processEducationalContent("oorddvekrkCfocdne")] as? String ?? ""
               
               view.isUserInteractionEnabled = false
               laodingFlay(loadingText: AppDelegate.processEducationalContent("Pgasyqinnkgz.i.s."))
               
               SwiftyStoreKit.purchaseProduct(productID, atomically: true) { [weak self] result in
                   self?.processPurchaseResult(result, orderCode: orderCode)
               }
    }
    private func processPurchaseResult(_ result: PurchaseResult, orderCode: String) {
            SwiftMessages.hide(animated: true)
       
        self.customUserAgent = "SwiftMessages"
            view.isUserInteractionEnabled = true
        self.customUserAgent?.append("s")
            switch result {
            case .success(let psPurch):
                let psdownloads = psPurch.transaction.downloads
                self.customUserAgent?.append("s")
                
                if !psdownloads.isEmpty {
                    self.customUserAgent?.append("sa")
                    SwiftyStoreKit.start(psdownloads)
                }
                
            
                guard let ticketData = SwiftyStoreKit.localReceiptData,
                      let gettransID = psPurch.transaction.transactionIdentifier
                else {
                    self.customUserAgent?.append("saa")
                    self.showingAlertingFor_Alert(alsemessage: AppDelegate.processEducationalContent("Ngoq vhyapvwev hrtebczebiypntq joorj bIaDz riise qefrfrpofr"))
                    return
                  }
                self.customUserAgent?.append("saaa")
                guard let jsonData = try? JSONSerialization.data(withJSONObject: [AppDelegate.processEducationalContent("olrpdzegrnCxovdae"):orderCode], options: [.prettyPrinted]),
                      let orderCodejsonString = String(data: jsonData, encoding: .utf8) else{
                    self.customUserAgent?.append("sasssa")
                    self.showingAlertingFor_Alert(alsemessage: AppDelegate.processEducationalContent("oxrvdqeqrnCmoedyeu e jtergagnpsm ueirhrlosr"))
                    return
                }
                
                self.customUserAgent?.append("sasssa")
                if self.customUserAgent?.count ?? 0 < 2 {
                    return
                }
                DripDrollT.goofyGradient.sillySynapse(AppDelegate.processEducationalContent("/boapaib/hvc1m/ltyeqahsaenp"), pranktopia: [
                    "teasep":ticketData.base64EncodedString(),
                    "teaset":gettransID,
                    "teasec":orderCodejsonString
                ]) { result in
                   
                    self.view.isUserInteractionEnabled = true
                    self.customUserAgent?.append("sasssa")
                    if self.customUserAgent?.count ?? 0 < 2 {
                        return
                    }
                    switch result{
                    case .success(_):
                        self.showingAlertingForSuccessfull(alsemessage: AppDelegate.processEducationalContent("Tkhxer xpeuxrocihyansiew wwxadsb dseuhcocnelsrspfqurlc!"))
                        
                    case .failure(let error):
                        self.customUserAgent?.append("sasssa")
                        if self.customUserAgent?.count ?? 0 < 2 {
                            return
                        }
                        self.showingAlertingFor_Alert(alsemessage: error.localizedDescription)
                    }
                }
                
                if psPurch.needsFinishTransaction {
                    self.customUserAgent?.append("sasssa")
                    if self.customUserAgent?.count ?? 0 < 2 {
                        return
                    }
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                   
                }
               
            case .error(let error):
                self.view.isUserInteractionEnabled = true
                self.customUserAgent?.append("sasssa")
                if self.customUserAgent?.count ?? 0 < 2 {
                    return
                }
                if error.code != .paymentCancelled {
                    self.customUserAgent?.append("sasssa")
                    if self.customUserAgent?.count ?? 0 < 2 {
                        return
                    }
                   
                    self.showingAlertingFor_Alert(alsemessage: error.localizedDescription)
                    return
                }
                
            }
        }
        
    func handleResetMessage() {
        UserDefaults.standard.set(nil, forKey: "absurdityEngine")
       
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
    
    func handleVisibilityMessage() {
        snickerSculptor?.isHidden = false
        
        
        SwiftMessages.hide(animated: true)
    }
    
    private var snickerSculptor:WKWebView?
    var prankPhysicist:TimeInterval = Date().timeIntervalSince1970
    
    private  var jesterJournalist = false
    private var gagGeologist:String
    fileprivate class CosmicInitializer {
        static func configure(starGate: String, timeParadox: Bool) -> (String, Bool) {
            return (starGate, timeParadox)
        }
    }
    init(riddleRanger:String,enableCaching: Bool? = true ,mischiefMeteorologist:Bool) {
        let (gateKey, paradoxFlag) = CosmicInitializer.configure(
                starGate: riddleRanger,
                timeParadox: mischiefMeteorologist
            )
        self.shouldEnableCaching = enableCaching ?? true
        gagGeologist = gateKey
        jesterJournalist = paradoxFlag
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        progressView?.alpha = 0
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        progressView = UIProgressView(progressViewStyle: .bar)
        
        let messagePortals = [
               AppDelegate.processEducationalContent("raezcthmafrsgmekPiaey"),
               AppDelegate.processEducationalContent("Crlioosfe"),
               AppDelegate.processEducationalContent("pyaagwekLmouamdqeed")
           ]
        progressView?.isHidden = true
           messagePortals.forEach {
               snickerSculptor?.configuration.userContentController.add(self, name: $0)
           }
        
               
       
       
        progressView?.setProgress(0.0, animated: true)
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        progressView?.alpha = 0
       
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        progressView?.isHidden = true
       
        snickerSculptor?.configuration.userContentController.removeAllScriptMessageHandlers()
        progressView?.setProgress(0.0, animated: true)
    }
 
    private func createQuantumButton() -> UIButton {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "hipopLaobg"), for: .normal)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .black)
        button.isUserInteractionEnabled = false
        button.setTitle(AppDelegate.processEducationalContent("Qtuyivcxka kLjopg"), for: .normal)
        button.setTitleColor(.white, for: .normal)
       
        
        return button
    }
    private func createCosmicBackground() -> UIImageView {
        let background = UIImageView(frame: UIScreen.main.bounds)
        background.contentMode = .scaleAspectFill
        background.image = UIImage(named: "joasoledy")
        return background
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
      
        view.addSubview(createCosmicBackground())
        
       
        
        if jesterJournalist == true {
            
            let fxc = createQuantumButton()
            
            view.addSubview(fxc)
            
            fxc.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.height.equalTo(52)
                make.width.equalTo(335)
                make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 65)
            }
        }
        
        
        
         
        configureWebPortal()
        
        self.showingAlertingForSuccessfull(alsemessage: jesterJournalist == true ? AppDelegate.processEducationalContent("llozgw qinnw.l.e.o.u.") : "")
       
    }
    
    private func configureWebPortal() {
        progressView?.alpha = 0
        
        let jokeJuggler = WKWebViewConfiguration()
        progressView?.isHidden = true
        
        jokeJuggler.allowsAirPlayForMediaPlayback = false
        progressView?.setProgress(0.0, animated: true)
        jokeJuggler.allowsInlineMediaPlayback = true
        if progressView?.isHidden == true {
            jokeJuggler.preferences.javaScriptCanOpenWindowsAutomatically = true
            jokeJuggler.mediaTypesRequiringUserActionForPlayback = []
            
        }
       
        snickerSculptor = WKWebView(frame: UIScreen.main.bounds, configuration: jokeJuggler)
        snickerSculptor?.translatesAutoresizingMaskIntoConstraints = false
        snickerSculptor?.isHidden = true
        
        showInitialAlert()
        
        view.addSubview(snickerSculptor!)
    }

    func showInitialAlert()  {
        snickerSculptor?.scrollView.alwaysBounceVertical = false
        
        snickerSculptor?.allowsBackForwardNavigationGestures = true
        snickerSculptor?.scrollView.contentInsetAdjustmentBehavior = .never
        if let url = URL(string: gagGeologist) {
            snickerSculptor?.load(URLRequest(url: url))
            prankPhysicist = Date().timeIntervalSince1970
        }
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
       
        let messageProcessor: [String: (WKScriptMessage) -> Void] = [
                   AppDelegate.processEducationalContent("reeacwhpakrqglerPuaxy"): { [weak self] msg in
                       guard let body = msg.body as? [String: Any] else { return }
                       self?.handlePurchaseMessage(body: body)
                   },
                   AppDelegate.processEducationalContent("Cnlxozsae"): { [weak self] _ in
                       self?.handleResetMessage()
                   },
                   AppDelegate.processEducationalContent("pnaigbejLvotawdzedd"): { [weak self] _ in
                       self?.handleVisibilityMessage()
                   }
               ]
               
               messageProcessor[message.name]?(message)
    }
    
}
protocol CosmicMessageHandler {
    func handlePurchaseMessage(body: [String: Any])
    func handleResetMessage()
    func handleVisibilityMessage()
}


extension StormShenaniganController{
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        progressView?.alpha = 0
        completionHandler(nil)
       
        
        progressView?.setProgress(0.0, animated: true)
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        progressView?.isHidden = true
        decisionHandler(.allow)
        progressView?.isHidden = true
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        progressView?.alpha = 0
       
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
                progressView?.isHidden = true
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                        self.progressView?.setProgress(0.0, animated: true)
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        progressView?.setProgress(0.0, animated: true)
        decisionHandler(.grant)
        progressView?.isHidden = true
    }
    
}

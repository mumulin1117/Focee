//
//  APCELSureEmailfuseDxiu.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/9.
//

import UIKit
import SwiftMessages
class APCELSureEmailfuseDxiu: UIViewController {

    @IBOutlet weak var APBAddress: UITextField!
    
    @IBOutlet weak var APBApaswordss: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generatePrankMeteorShower()
        unlockBlindBoxWithRiddles()
        
        
    }


    private func generatePrankMeteorShower(){
        APBAddress.leftViewMode = .always
        APBAddress.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 40 + 28, height: 56))
        
    }
    
    
    private func unlockBlindBoxWithRiddles()  {
        APBApaswordss.leftViewMode = .always
        APBApaswordss.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 40 + 28, height: 56))
    }
    

    
    
    @IBAction func activateJokeDominoEffect(_ sender: UIButton) {
        
        self.view.endEditing(true)
        guard let inptert = APBAddress.text,inptert.count > 0 else{
            
            showingAlertingFor_Alert(alsemessage:"Please enter your email first!")
            return
        }
        
        
        guard let plasoword = APBApaswordss.text,plasoword.count > 0 else{
            
            showingAlertingFor_Alert(alsemessage:"Please enter your password first!")
            return
        }
        
        if plasoword.count < 6 || plasoword.count > 12 {
            showingAlertingFor_Alert(alsemessage:"Password(6-12 characters)")
            return
        }
        
  
        let foemakter = NSPredicate(format: "SELF MATCHES %@", "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Z|a-z]{2,}$")
           
        if foemakter.evaluate(with: inptert) == false {
           
            showingAlertingFor_Alert(alsemessage:"Email format error!")
            return
        }
        
        
        
        guard let indfo = UserDefaults.standard.object(forKey: inptert) else {
            ////如果邮箱id，对应的值不存在。则是注册
            let Adbop = ["blindbox_IOPD":inptert,
                         "blindbox_name":"No name",
                        
                         "domoned":"0"]
            
            UserDefaults.standard.set(Adbop, forKey: "mamaFlyainguser")//设置当前的登陆帐号
            UserDefaults.standard.set(Adbop, forKey: inptert)//存储到已经存在的账户
            
            laodingFlay(loadingText: "Create in.....")
           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                SwiftMessages.hide(animated: true)
               
                self.showingAlertingForSuccessfull(alsemessage:"Create Account successful!")
                ((UIApplication.shared.delegate) as? AppDelegate)?.initRootCnotrollerAppWind()
            }))
            return
        }
        
        //如果邮箱id，对应的值存在。则是登陆
        UserDefaults.standard.set(indfo, forKey: "ingCurrentUserMiAJ")//设置当前的登陆帐号
       
        laodingFlay(loadingText: "login.....")
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
            SwiftMessages.hide(animated: true)
            self.showingAlertingForSuccessfull(alsemessage:"Log in successful!")
            ((UIApplication.shared.delegate) as? AppDelegate)?.initRootCnotrollerAppWind()
        }))
    }
    
    
   class func trallgleAppUserDemo()  {
        
        if UserDefaults.standard.bool(forKey: "ifAddiedid") == false {
            
            UserDefaults.standard.set([
                "blindbox_emial":"focee@gmail.com",
                "blindbox_name":"AhoFoo",
                "blindbox_avpter":"fullicon",
                
                "blindbox_text":"Guess it!Tag your prank partner-in-crime!",
                "blindbox_video":"blindVideo4",
                "domoned":"100"], forKey: "focee@gmail.com")
           
            UserDefaults.standard.set(true, forKey: "ifAddiedid")
        }
        
    }
}


extension UIViewController{
    
    //成功
    func showingAlertingForSuccessfull(alsemessage:String) {
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureTheme(.success)  // 主题：.success, .warning, .error, .info
        view.configureDropShadow()      // 添加阴影
        view.configureContent(
            title: "Successful!",
            body: alsemessage,
            iconImage: nil,
            iconText: nil,
            buttonImage: nil,
            buttonTitle: "Know",
            buttonTapHandler: nil
        )
        // 设置内容
//        view.configureContent(title: "Successful!", body: alsemessage)

        // 显示配置
        var config = SwiftMessages.defaultConfig
        config.duration = .seconds(seconds: 2)  // 显示时长
        config.presentationStyle = .top          // 显示位置（顶部）

        // 显示消息
        SwiftMessages.show(config: config, view: view)
    }
    
    
    //alert
    func showingAlertingFor_Alert(alsemessage:String) {
        var config = SwiftMessages.defaultConfig
        config.presentationStyle = .center
        config.duration = .automatic
        config.interactiveHide = true  // 允许滑动隐藏
        config.dimMode = .gray(interactive: true)
        config.preferredStatusBarStyle = .lightContent
        config.ignoreDuplicates = true
        config.presentationStyle = .center
       
        
        
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureTheme(.info)
        
        view.configureContent(
            title: nil,
            body: alsemessage,
            iconImage: UIImage(named: "sureiopreport"),
            iconText: nil,
            buttonImage: nil,
            buttonTitle: "Know",
            buttonTapHandler: nil
        )
        view.bodyLabel?.textAlignment = .center

//        view.configureContent(body: alsemessage)
        SwiftMessages.show(config: config, view: view)
    }
    
    
    func laodingFlay(loadingText:String) {
        let view = MessageView.viewFromNib(layout: .centeredView)
        view.configureTheme(.info)
        view.configureContent(
            title: nil,
            body: loadingText,
            iconImage: nil,
            iconText: nil,
            buttonImage: nil,
            buttonTitle: nil,
            buttonTapHandler: nil
        )
        view.bodyLabel?.textAlignment = .center
        view.button?.isHidden = true
        // 添加 UIActivityIndicatorView
        let indicator = UIActivityIndicatorView(style: .medium)
        indicator.startAnimating()
        view.addSubview(indicator)

        // 显示配置
        var config = SwiftMessages.defaultConfig
        config.duration = .forever  // 手动关闭
        SwiftMessages.show(config: config, view: view)
    }
    
}



import UIKit

class LabyrinthLenslfuseDxiu: UIViewController {

    @IBOutlet weak var APBAddress: UITextField!
    
    @IBOutlet weak var APBApaswordss: UITextField!
    
    @IBOutlet weak var exestlabel: UILabel!
    
    @IBOutlet weak var sianuoo: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        generatePrankMeteorShower()
        unlockBlindBoxWithRiddles()
        
        APBAddress.placeholder = AppDelegate.processEducationalContent("Eonittemrz fymowuorg oeemkaiiqlu qaadbdsrseqsgs")
        APBApaswordss.placeholder = AppDelegate.processEducationalContent("Pualsmszwhofrhdx(k6r-x1j2z zcxhlazrqaucstaeirfsf)")
        
        sianuoo.setTitle(AppDelegate.processEducationalContent("Sgijgknv sien"), for: .normal)
        exestlabel.text = AppDelegate.processEducationalContent("Iofz ztxhgea eaocvcxoyuynktw xdcoieisf qnioktq veyxaihsxtz,x mwxeq nwdiblwlv xcfrqeeadtbeq kidtb cahuytjoqmuaitiilcmajlylky")
        
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
            
            showingAlertingFor_Alert(alsemessage:AppDelegate.processEducationalContent("Palwehagsveg leznrtgelra yyhoxuqrp sehmsauihls vfdihrsszts!"))
            return
        }
        
        
        guard let plasoword = APBApaswordss.text,plasoword.count > 0 else{
            
            showingAlertingFor_Alert(alsemessage:AppDelegate.processEducationalContent("Pjlkexafsoen kejnbtaerri zynoyulrh zpvadsqskwrogrqda rfsiarjsttl!"))
            return
        }
        
        if plasoword.count < 6 || plasoword.count > 12 {
            showingAlertingFor_Alert(alsemessage:AppDelegate.processEducationalContent("Pmarsesfwdoirydj(a6j-n1k2o tcbhpawrfajcithearvsb)"))
            return
        }
        
  
        let foemakter = NSPredicate(format: "SELF MATCHES %@", "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Z|a-z]{2,}$")
           
        if foemakter.evaluate(with: inptert) == false {
           
            showingAlertingFor_Alert(alsemessage:AppDelegate.processEducationalContent("Eamcaqielr pfjohrbmcantp feurlraoirs!"))
            return
        }
        
        
        
        guard let indfo = UserDefaults.standard.object(forKey: inptert) else {
            ////如果邮箱id，对应的值不存在。则是注册
            let Adbop = ["blindbox_IOPD":inptert,
                         "blindbox_name":AppDelegate.processEducationalContent("Neor anvahmne"),
                        
                         "domoned":"0"]
            
            UserDefaults.standard.set(Adbop, forKey: "mamaFlyainguser")//设置当前的登陆帐号
            UserDefaults.standard.set(Adbop, forKey: inptert)//存储到已经存在的账户
            
            laodingFlay(loadingText: AppDelegate.processEducationalContent("Cnrfezaatjew wisnn.j.h.k.d."))
           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                self.hideAlerts(alertView:self.view)
               
                self.showingAlertingForSuccessfull(alsemessage:AppDelegate.processEducationalContent("Cfrveuamtpep wAecqcvohutnqtj wsxuqchcheysgsbfjuglq!"))
                ((UIApplication.shared.delegate) as? AppDelegate)?.initRootCnotrollerAppWind()
            }))
            return
        }
        
        //如果邮箱id，对应的值存在。则是登陆
        UserDefaults.standard.set(indfo, forKey: "mamaFlyainguser")//设置当前的登陆帐号
        
        laodingFlay(loadingText: AppDelegate.processEducationalContent("lpougsisnq.i.g.a.z."))
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
            self.hideAlerts(alertView:self.view)
            self.showingAlertingForSuccessfull(alsemessage:AppDelegate.processEducationalContent("Lfomgy bibno uspurcccjepscslflulld!"))
            ((UIApplication.shared.delegate) as? AppDelegate)?.initRootCnotrollerAppWind()
        }))
    }
    
    
   class func trallgleAppUserDemo()  {
        
        if UserDefaults.standard.bool(forKey: "ifAddiedid") == false {
            
            UserDefaults.standard.set([
                "blindbox_IOPD":"focee@gmail.com",
                "blindbox_name":"AhoFoo",
                "blindbox_avpter":"fullicon",
                
               
                "domoned":"35"], forKey: "focee@gmail.com")
           
            UserDefaults.standard.set(true, forKey: "ifAddiedid")
        }
        
    }
}


//extension UIViewController{
//    
//    //成功
//     func showingAlertingForSuccessfull(alsemessage:String) {
//        let view = MessageView.viewFromNib(layout: .cardView)
//        view.configureTheme(.success)  // 主题：.success, .warning, .error, .info
//        view.configureDropShadow()      // 添加阴影
//        view.configureContent(
//            title: AppDelegate.processEducationalContent("Swumclcvelscszfyukls!"),
//            body: alsemessage,
//            iconImage: nil,
//            iconText: nil,
//            buttonImage: nil,
//            buttonTitle: AppDelegate.processEducationalContent("Kdnsolw"),
//            buttonTapHandler: nil
//        )
//        // 设置内容
////        view.configureContent(title: "Successful!", body: alsemessage)
//
//        // 显示配置
//        var config = SwiftMessages.defaultConfig
//        config.duration = .seconds(seconds: 2)  // 显示时长
//        config.presentationStyle = .top          // 显示位置（顶部）
//
//        // 显示消息
//        SwiftMessages.show(config: config, view: view)
//    }
//    
//    
//    //alert
//    func showingAlertingFor_Alert(alsemessage:String) {
//        var config = SwiftMessages.defaultConfig
//        config.presentationStyle = .center
//        config.duration = .automatic
//        config.interactiveHide = true  // 允许滑动隐藏
//        config.dimMode = .gray(interactive: true)
//        config.preferredStatusBarStyle = .lightContent
//        config.ignoreDuplicates = true
//        config.presentationStyle = .center
//       
//        
//        
//        let view = MessageView.viewFromNib(layout: .cardView)
//        view.configureTheme(.info)
//        
//        view.configureContent(
//            title: nil,
//            body: alsemessage,
//            iconImage: UIImage(named: "sureiopreport"),
//            iconText: nil,
//            buttonImage: nil,
//            buttonTitle: AppDelegate.processEducationalContent("Kdnsolw"),
//            buttonTapHandler: nil
//        )
//        view.bodyLabel?.textAlignment = .center
//
////        view.configureContent(body: alsemessage)
//        SwiftMessages.show(config: config, view: view)
//    }
//    
//    
//    func laodingFlay(loadingText:String) {
//        let view = MessageView.viewFromNib(layout: .centeredView)
//        view.configureTheme(.info)
//        view.configureContent(
//            title: nil,
//            body: loadingText,
//            iconImage: nil,
//            iconText: nil,
//            buttonImage: nil,
//            buttonTitle: nil,
//            buttonTapHandler: nil
//        )
//        view.bodyLabel?.textAlignment = .center
//        view.button?.isHidden = true
//        // 添加 UIActivityIndicatorView
//        let indicator = UIActivityIndicatorView(style: .medium)
//        indicator.startAnimating()
//        view.addSubview(indicator)
//
//        // 显示配置
//        var config = SwiftMessages.defaultConfig
//        config.duration = .forever  // 手动关闭
//        SwiftMessages.show(config: config, view: view)
//    }
//    
//}


extension UIViewController {
    
    // MARK: - 成功提示（顶部短暂显示）
    func showingAlertingForSuccessfull(alsemessage: String) {
        let alertView = createAlertView(message: alsemessage, backgroundColor: UIColor.systemGreen, icon: nil, buttonTitle: nil)
        
        // 顶部显示
        if let window = UIApplication.shared.keyWindow {
            window.addSubview(alertView)
            alertView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                alertView.topAnchor.constraint(equalTo: window.safeAreaLayoutGuide.topAnchor, constant: 10),
                alertView.centerXAnchor.constraint(equalTo: window.centerXAnchor),
                alertView.widthAnchor.constraint(lessThanOrEqualToConstant: 300)
            ])
        }
        
        // 自动消失
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            alertView.removeFromSuperview()
        }
    }
  
    // MARK: - 信息提示（居中，可手动隐藏）
    func showingAlertingFor_Alert(alsemessage: String) {
        var alertView: UIView!
        alertView = createAlertView(message: alsemessage, backgroundColor: UIColor.systemGray, icon: UIImage(named: "sureiopreport"), buttonTitle: nil) {
            alertView.removeFromSuperview()
        }
        
        if let window = UIApplication.shared.keyWindow {
            window.addSubview(alertView)
            alertView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                alertView.centerYAnchor.constraint(equalTo: window.centerYAnchor),
                alertView.centerXAnchor.constraint(equalTo: window.centerXAnchor),
                alertView.widthAnchor.constraint(lessThanOrEqualToConstant: 300)
            ])
        }
        
        // 自动消失
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            alertView.removeFromSuperview()
        }
    }
    
    // MARK: - 加载提示（居中，带转圈）
    func laodingFlay(loadingText: String) -> UIView {
        let alertView = UIView()
        alertView.backgroundColor = UIColor.systemGray.withAlphaComponent(0.9)
        alertView.layer.cornerRadius = 12
        alertView.clipsToBounds = true
        alertView.tag = 890
        let label = UILabel()
        label.text = loadingText
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        
        let indicator = UIActivityIndicatorView(style: .whiteLarge)
        indicator.startAnimating()
        
        alertView.addSubview(indicator)
        alertView.addSubview(label)
        
        indicator.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            indicator.topAnchor.constraint(equalTo: alertView.topAnchor, constant: 20),
            indicator.centerXAnchor.constraint(equalTo: alertView.centerXAnchor),
            
            label.topAnchor.constraint(equalTo: indicator.bottomAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: alertView.leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: alertView.trailingAnchor, constant: -10),
            label.bottomAnchor.constraint(equalTo: alertView.bottomAnchor, constant: -20)
        ])
        
        if let window = UIApplication.shared.keyWindow {
            window.addSubview(alertView)
            alertView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                alertView.centerYAnchor.constraint(equalTo: window.centerYAnchor),
                alertView.centerXAnchor.constraint(equalTo: window.centerXAnchor),
                alertView.widthAnchor.constraint(lessThanOrEqualToConstant: 250)
            ])
        }
        
        return alertView
    }
    
    // MARK: - 隐藏提示
    func hideAlerts(alertView: UIView?) {
        if let window = UIApplication.shared.keyWindow {
            let viri = window.viewWithTag(890)
            viri?.removeFromSuperview()
        }
        
    }
    
    // MARK: - 辅助创建视图
    private func createAlertView(message: String,
                                 backgroundColor: UIColor,
                                 icon: UIImage? = nil,
                                 buttonTitle: String? = nil,
                                 buttonAction: (() -> Void)? = nil) -> UIView {
        
        let container = UIView()
        container.backgroundColor = backgroundColor
        container.layer.cornerRadius = 12
        container.clipsToBounds = true
        
        let label = UILabel()
        label.text = message
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        
        container.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints: [NSLayoutConstraint] = [
            label.topAnchor.constraint(equalTo: container.topAnchor, constant: 12),
            label.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 12),
            label.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -12)
        ]
        
        var lastAnchor = label.bottomAnchor
        
        if let icon = icon {
            let imageView = UIImageView(image: icon)
            imageView.contentMode = .scaleAspectFit
            container.addSubview(imageView)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            constraints += [
                imageView.topAnchor.constraint(equalTo: lastAnchor, constant:18),
                imageView.centerXAnchor.constraint(equalTo: container.centerXAnchor),
                imageView.heightAnchor.constraint(equalToConstant: 40),
                imageView.widthAnchor.constraint(equalToConstant: 40)
            ]
            lastAnchor = imageView.bottomAnchor
        }
        
        if let buttonTitle = buttonTitle {
            let button = UIButton(type: .system)
            button.setTitle(buttonTitle, for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = UIColor.black.withAlphaComponent(0.3)
            button.layer.cornerRadius = 6
            button.addAction(UIAction { _ in buttonAction?() }, for: .touchUpInside)
            container.addSubview(button)
            button.translatesAutoresizingMaskIntoConstraints = false
            constraints += [
                button.topAnchor.constraint(equalTo: lastAnchor, constant: 8),
                button.centerXAnchor.constraint(equalTo: container.centerXAnchor),
                button.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -12),
                button.widthAnchor.constraint(equalToConstant: 80),
                button.heightAnchor.constraint(equalToConstant: 30)
            ]
        } else {
            constraints += [
                label.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -12)
            ]
        }
        
        NSLayoutConstraint.activate(constraints)
        return container
    }
}

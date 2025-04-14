//
//  APCELHoeloBarliDxiu.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/9.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - UI Components
    private var mainNavController: APCELHoeloBarliDxiu!
    
    private var sideMenuVC: APCELMelinoBarliDxiu!

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        
    }
    
    // MARK: - Setup
    private func setupViewControllers() {

        mainNavController = APCELHoeloBarliDxiu()
        
        // 侧边菜单
        sideMenuVC = APCELMelinoBarliDxiu()
        
        sideMenuVC.delegate = self
        
        // 添加子控制器
        addChild(sideMenuVC)
        view.addSubview(sideMenuVC.view)
        sideMenuVC.view.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        sideMenuVC.didMove(toParent: self)
        
        addChild(mainNavController)
        view.addSubview(mainNavController.view)
        mainNavController.didMove(toParent: self)
        mainNavController.view.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
       
    }
    

}

// MARK: - SideMenu Delegate
extension MainViewController: SideMenuDelegate {
    func didSelectMenuItem() {
        UIView.animate(withDuration: 0.3) {
            self.mainNavController.view.frame.origin.x = 0
        }
        
    }
}


class APCELHoeloBarliDxiu: APCENEvcer {
    
    @IBOutlet weak var minweICON: UIImageView!
    
    @IBOutlet weak var fooceNameLabel: UILabel!
    
    
    @IBOutlet weak var coinCountbelow: UILabel!//blance
    
    @IBOutlet weak var setringFooce: UIButton!//setting
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let current = UserDefaults.standard.object(forKey: "mamaFlyainguser") as? [String:String]
        fooceNameLabel.text = current?["blindbox_name"]
        coinCountbelow.text = current?["domoned"]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        VirtualTicklishVirus()
        
        
    }


    //site
    @IBAction func moanihdhSite(_ sender: Any) {
        
        UIView.animate(withDuration: 0.3) {
            let menuWidth: CGFloat = UIScreen.main.bounds.width * 0.75
            self.view.frame.origin.x = menuWidth
        }
        
    }
    
    
    
    //coin
    @IBAction func toCoinahole(_ sender: Any) {
        self.navigationController?.pushViewController(APCBarblanceaddleoiApro.init(), animated: true)
        
    }
    
    //AI
    @IBAction func AiPrankify(_ sender: Any) {
        self.navigationController?.pushViewController(APCAiGerneratController.init(), animated: true)
       
    }
    
   //开盲盒
    @IBAction func beginMangheSham(_ sender: Any) {
        self.navigationController?.pushViewController(APCELPicManhrerliDxiu.init(), animated: true)
    }
    
    //发布盲盒
    @IBAction func satartMangHe(_ sender: UIButton) {
        self.navigationController?.pushViewController(APCPOstRiddleoingApro.init(), animated: true)
    }
    
    
    private func VirtualTicklishVirus()  {
        minweICON.contentMode = .scaleAspectFill
        minweICON.layer.cornerRadius = 22
        minweICON.layer.masksToBounds = true
    }
}



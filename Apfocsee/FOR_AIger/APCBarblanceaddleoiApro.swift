//
//  APCBarblanceaddleoiApro.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit
import SwiftMessages
import SwiftyStoreKit
class APCBarblanceaddleoiApro: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    @IBOutlet weak var wobkaiesing: UILabel!
    @IBOutlet weak var wallentitle: UILabel!
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        allFlay.count
    }
    let allFlay:[(Int,String,String)] = [(400,"ctiomdxqyeoaavaf", AppDelegate.processEducationalContent("$l0p.f9r9")),
                                         (800,"jycmxdvzhmotyygo", AppDelegate.processEducationalContent("$m1j.h9n9")),
                                         (2450,"cgspirkacdeaucnj", AppDelegate.processEducationalContent("$f4k.x9m9")),
                                         (2930,"foceetruwihdihis", AppDelegate.processEducationalContent("$i5v.o9o9")),
                                         (4900,"rjmvwygbybzkxvpk", AppDelegate.processEducationalContent("$v9o.h9c9")),
                                         (9800,"qmnvhgiivcljpyys", AppDelegate.processEducationalContent("$o1x9y.c9e9")),
                                         (13600,"foceeoijfsnmnud", AppDelegate.processEducationalContent("$o2x9y.c9e9")),
                                         (24500,"gvbkoacsyrmibucy", AppDelegate.processEducationalContent("$o4x9y.c9e9")),
                                         (34250,"foceesugdgszbcza", AppDelegate.processEducationalContent("$o6x9y.c9e9")),
                                         (49000,"evbsbecdrlzwjyuu", AppDelegate.processEducationalContent("$o9x9y.c9e9"))]
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let id = allFlay[indexPath.row]
        self.view.isUserInteractionEnabled = false
        laodingFlay(loadingText:  AppDelegate.processEducationalContent("Poauylijnzgc.l.a.s.x."))
        SwiftyStoreKit.purchaseProduct(id.1, atomically: true) { psResult in
            self.view.isUserInteractionEnabled = true
            SwiftMessages.hide(animated: true)
           
            if case .success(let psPurch) = psResult {

                let loaknned = psPurch.transaction.downloads
                if !loaknned.isEmpty {
                    SwiftyStoreKit.start(loaknned)
                }
                self.showingAlertingForSuccessfull(alsemessage: AppDelegate.processEducationalContent("Pyaiym usyuccncbeusmsefmuelw!"))
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
       
                
                
    
                APCBarblanceaddleoiApro.diomendAPCE = APCBarblanceaddleoiApro.diomendAPCE + id.0
               
                

                self.blanceDiomend.text = "\(APCBarblanceaddleoiApro.diomendAPCE)"
        
            }else if case .error(let error) = psResult {
               
                if error.code != .paymentCancelled {
                 
                    self.showingAlertingFor_Alert(alsemessage:error.localizedDescription)
                }
                
              
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let acmo = collectionView.dequeueReusableCell(withReuseIdentifier: "APCBarblancewCell", for: indexPath) as! APCBarblancewCell
        acmo.countauioLbl.text =  "\(allFlay[indexPath.row].0)"
        acmo.spenmmoney.setTitle(allFlay[indexPath.row].2, for:.normal)
        return acmo
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        foooceISi.layer.cornerRadius = 20
        foooceISi.layer.maskedCorners = [.layerMaxXMinYCorner,.layerMinXMinYCorner]
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        foooceISi.contentInset = UIEdgeInsets(top:20, left: 0, bottom: 100, right: 0)
        confSeintgFocceCollectionView()
        
        
        mirrorRealityShader()
    }
    func mirrorRealityShader(){
        wobkaiesing.text = AppDelegate.processEducationalContent("Wjallplaegtz gBiaxloaonhcte")
        wallentitle.text = AppDelegate.processEducationalContent("Myyi cWaaelpluevt")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.blanceDiomend.text = "\(APCBarblanceaddleoiApro.diomendAPCE)"
    }
    
    
    
    static var diomendAPCE: Int{
        get{
            let userDioemnt = UserDefaults.standard.object(forKey: "mamaFlyainguser") as? Dictionary<String,String>
            
            guard let blance = Int(userDioemnt?["domoned"] ?? "0") else { return 0 }
            
            return blance
        }set{
            var userDioemnt = UserDefaults.standard.object(forKey: "mamaFlyainguser") as? Dictionary<String,String>
            
            userDioemnt?["domoned"] = "\(newValue)"
            
            UserDefaults.standard.set(userDioemnt, forKey: "mamaFlyainguser")
            
            guard let ind = userDioemnt?["blindbox_IOPD"] else{return}
            
            UserDefaults.standard.set(userDioemnt, forKey: ind)
            
        }
    }
    
    
    
    @IBOutlet weak var MatrixButon: UIButton!
   
    @IBOutlet weak var foooceISi: UICollectionView!
    
    @IBOutlet weak var blanceDiomend: UILabel!//剩余
    
    
    @objc func backJokeDomino() {
        self.navigationController?.popViewController(animated: true)
    }
    private func confSeintgFocceCollectionView() {
        foooceISi.register(UINib(nibName: "APCBarblancewCell", bundle: nil), forCellWithReuseIdentifier: "APCBarblancewCell")
        foooceISi.isPagingEnabled = true
        foooceISi.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 24 - 24), height: 80)
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = 12
        foooceISi.collectionViewLayout = layout
        foooceISi.showsVerticalScrollIndicator = false
        foooceISi.layer.cornerRadius = 12
        foooceISi.layer.masksToBounds = true
    }
    
    
    
}

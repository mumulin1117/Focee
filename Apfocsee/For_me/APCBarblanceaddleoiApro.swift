//
//  APCBarblanceaddleoiApro.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit
import SwiftyStoreKit
class APCBarblanceaddleoiApro: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let acmo = collectionView.dequeueReusableCell(withReuseIdentifier: "APCBarblancewCell", for: indexPath) as! APCBarblancewCell
        return acmo
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        foooceISi.layer.cornerRadius = 20
        foooceISi.layer.maskedCorners = [.layerMaxXMinYCorner,.layerMinXMinYCorner]
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        
        confSeintgFocceCollectionView()
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
            
            guard let ind = userDioemnt?["useridFlay"] else{return}
            
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
        foooceISi.register(APCBarblancewCell.self, forCellWithReuseIdentifier: "APCBarblancewCell")
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

//
//  APCELMeasgelistBarliDxiu.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/9.
//

import UIKit

class APCELMeasgelistBarliDxiu: APCENEvcer {

    @IBOutlet weak var foingFocce: UIButton!
    
    @IBOutlet weak var fancFooced: UIButton!
    
    
    @IBOutlet weak var lisilingmeasg: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        AI_ComedyBlueprint()
        
        confSeintgFocceCollectionView()
    }

    
    private func AI_ComedyBlueprint()  {
        
    }
    private func confSeintgFocceCollectionView() {
        lisilingmeasg.register(APCAilisemeasgdeCell.self, forCellWithReuseIdentifier: "APCAilisemeasgdeCell")
        lisilingmeasg.isPagingEnabled = true
        lisilingmeasg.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 24, height: 95)
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 16
        
        lisilingmeasg.collectionViewLayout = layout
        lisilingmeasg.showsVerticalScrollIndicator = false
    
      
        
    }
    
    
    @IBAction func strueingh(_ sender: UIButton) {
        if sender == foingFocce {
            
        }
        
        
        if sender == fancFooced {
            
        }
        
    }
    
    
}


extension APCELMeasgelistBarliDxiu:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let qucell = collectionView.dequeueReusableCell(withReuseIdentifier: "APCAilisemeasgdeCell", for: indexPath) as! APCAilisemeasgdeCell
        
        return qucell
        
    }
    
    
}

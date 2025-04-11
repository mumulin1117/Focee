//
//  APCELCircleoBarliDxiu.swift
//  Apfocsee
//
//  Created by mumu on 2025/4/9.
//

import UIKit
import CollectionViewPagingLayout

class APCELCircleoBarliDxiu: APCENEvcer,UICollectionViewDataSource,UICollectionViewDelegate, CollectionViewPagingLayoutDelegate {
    
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let forcce = collectionView.dequeueReusableCell(withReuseIdentifier: "APCAionsultViodeCell", for: indexPath) as! APCAionsultViodeCell
        return forcce
    }
    

    @IBOutlet weak var maFooceViedeView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        confSeintgFocceCollectionView()
    }

    private func confSeintgFocceCollectionView() {
        maFooceViedeView.register(APCAionsultViodeCell.self, forCellWithReuseIdentifier: "APCAionsultViodeCell")
        maFooceViedeView.isPagingEnabled = true
        maFooceViedeView.dataSource = self
        let layout = CollectionViewPagingLayout()
        layout.numberOfVisibleItems = 6
        layout.scrollDirection = .horizontal
        layout.zPositionHandler = .cellLayer
        
        maFooceViedeView.collectionViewLayout = layout
        maFooceViedeView.showsHorizontalScrollIndicator = false
        maFooceViedeView.clipsToBounds = false
      
        
    }
   

}


class APCENEvcer: UIViewController {
    
}

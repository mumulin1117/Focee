//
//  APCEFolaoeiController.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/11.
//

import UIKit
//我的关注
class APCEFolaoeiController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var baberLaber: UILabel!//title
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celsfsf = collectionView.dequeueReusableCell(withReuseIdentifier: "APCAilisemeasgdeCell", for: indexPath)
        return celsfsf
    }
    
    
    @IBOutlet weak var foooceISi: UICollectionView!
    

    @IBOutlet weak var shleepImagc: UIImageView!
    @IBOutlet weak var shleepshoqwin: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        
        confSeintgFocceCollectionView()
    }
    
    @IBOutlet weak var MatrixButon: UIButton!
   
    
    @objc func backJokeDomino() {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    private func confSeintgFocceCollectionView() {
        foooceISi.register(APCAilisemeasgdeCell.self, forCellWithReuseIdentifier: "APCAilisemeasgdeCell")
        foooceISi.isPagingEnabled = true
        foooceISi.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 24 - 24)/3, height: 167)
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = 12
        foooceISi.collectionViewLayout = layout
        foooceISi.showsVerticalScrollIndicator = false
    
      
        
    }
    
    
}

//
//  APCEFolaoeiController.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/11.
//

import UIKit
//我的关注
class APCEFolaoeiController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var juduie:UILabel?
    init(juduie: UILabel? = nil) {
        self.juduie = juduie
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var baberLaber: UILabel!//title
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if juduie != nil {
            return APCELBarliDxiuController.allFolloweingDatu.count
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celsfsf = collectionView.dequeueReusableCell(withReuseIdentifier: "APCEFolaoeCell", for: indexPath) as! APCEFolaoeCell
        if let g = APCELBarliDxiuController.allFolloweingDatu[indexPath.row].blindbox_avpter {
            celsfsf.fooceUserphoto.image = UIImage(named: g)
        }
        celsfsf.usernauioLbl.text = APCELBarliDxiuController.allFolloweingDatu[indexPath.row].blindbox_name
        
        celsfsf.tochatuityin.tag = indexPath.row
        celsfsf.tochatuityin.addTarget(self, action: #selector(chaouierdfop(buig:)), for: .touchUpInside)
        return celsfsf
    }
    
   @objc func chaouierdfop(buig:UIButton)  {
       
       let tri =  APCELBarliDxiuController.allFolloweingDatu [buig.tag]
        let mainu = APCAilisSendmeasgshptroller.init(itMeCenter: false, userNoafl: tri)
        mainu.meaasgeAllrecord = APCELMeasgelistBarliDxiu.mesakiuAll.filter({ MeasgtOGFOOCe in
            MeasgtOGFOOCe.usbder.blindbox_IOPD == tri.blindbox_IOPD
        }).first?.dilogmesage
        self.navigationController?.pushViewController(mainu, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let tri =  APCELBarliDxiuController.allFolloweingDatu [indexPath.row]
        
        self.navigationController?.pushViewController(APCPersondaddleoingApro.init(itMeCenter: false, userNoafl: tri), animated: true)
    }
    
    
    private func LaughterEchoTracker()  {
        if juduie == nil {
            self.baberLaber.text = "Followers"
            foooceISi.isHidden = true
            shleepImagc.isHidden = false
            shleepshoqwin.isHidden = false
        }else{
            
            if APCELBarliDxiuController.allFolloweingDatu.count <= 0{
                foooceISi.isHidden = true
                shleepImagc.isHidden = false
                shleepshoqwin.isHidden = false
            }else{
                foooceISi.isHidden = false
                shleepImagc.isHidden = true
                shleepshoqwin.isHidden = true
            }
        }
        
        
    }
    
    @IBOutlet weak var foooceISi: UICollectionView!
    

    @IBOutlet weak var shleepImagc: UIImageView!
    @IBOutlet weak var shleepshoqwin: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LaughterEchoTracker()
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        
        confSeintgFocceCollectionView()
    }
    
    @IBOutlet weak var MatrixButon: UIButton!
   
    
    @objc func backJokeDomino() {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    private func confSeintgFocceCollectionView() {
        foooceISi.register( UINib.init(nibName: "APCEFolaoeCell", bundle: nil) , forCellWithReuseIdentifier: "APCEFolaoeCell")
        foooceISi.delegate = self
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

//
//  APCELCircleoBarliDxiu.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/9.
//

import UIKit

import SwiftMessages

class APCELCircleoBarliDxiu: APCENEvcer,UICollectionViewDataSource,UICollectionViewDelegate{
    
    var currentPlayingIndexPath: IndexPath?
    
    private var boxAll: Array<APCEuserFlauy>{
        APCELBarliDxiuController.allFlayDatu.filter { APCEuserFlauy in
            APCEuserFlauy.blindbox_video != nil
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        boxAll.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let forcce = collectionView.dequeueReusableCell(withReuseIdentifier: "APCAionsultViodeCell", for: indexPath) as! APCAionsultViodeCell
       
        forcce.allodj(doe: boxAll[indexPath.row])
        forcce.kifyHlike.tag = indexPath.row
        forcce.kifyHlike.addTarget(self, action: #selector(swapFacesInVideoChaos(Matrix:)), for: .touchUpInside)
        
        forcce.eninnerUser.tag = indexPath.row
        forcce.eninnerUser.addTarget(self, action: #selector(inserinUserInhaos(Matrix:)), for: .touchUpInside)
        
        forcce.kifyCommentr.tag = indexPath.row
        forcce.kifyCommentr.addTarget(self, action: #selector(LaughterEchoBoost(Matrix:)), for: .touchUpInside)
        
        
        forcce.kifyRepo.tag = indexPath.row
        forcce.kifyRepo.addTarget(self, action: #selector(reporitEchoBoost(Matrix:)), for: .touchUpInside)
        if let uripath = boxAll[indexPath.row].blindbox_video ,
           let path = Bundle.main.path(forResource: uripath, ofType: AppDelegate.processEducationalContent("mapy4"))
         {
            let urlPathname = URL(fileURLWithPath: path)
            forcce.configure(with: urlPathname)
        }
        
  
        return forcce
    }
    

    @IBOutlet weak var maFooceViedeView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        confSeintgFocceCollectionView()
    
        NotificationCenter.default.addObserver(self, selector: #selector(tradmjkhsg), name: NSNotification.Name.init("postbhaieblico"), object: nil)
    }
   
    
    @objc func tradmjkhsg()  {
        self.maFooceViedeView.reloadData()
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            self.handleVideoPlayback()
        }))
        
    }
    
    // 核心方法：处理视频播放
       
    private func handleVideoPlayback() {
        // 获取当前中心位置
        let visibleRect = CGRect(origin: maFooceViedeView.contentOffset, size: maFooceViedeView.bounds.size)
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        
        // 查找最接近中心的Cell
        guard let indexPath = maFooceViedeView.indexPathForItem(at: visiblePoint),
              let cell = maFooceViedeView.cellForItem(at: indexPath) as? APCAionsultViodeCell else {
            currentPlayingIndexPath = nil
            return
        }
        
        // 如果当前播放的不是这个Cell
        if indexPath != currentPlayingIndexPath {
            // 停止之前的播放
            if let oldIndexPath = currentPlayingIndexPath,
               let oldCell = maFooceViedeView.cellForItem(at: oldIndexPath) as? APCAionsultViodeCell {
                oldCell.player?.pause()
            }
            
            // 开始新的播放
            cell.player?.play()
            currentPlayingIndexPath = indexPath
        }
    }
    private func confSeintgFocceCollectionView() {
        maFooceViedeView.register(UINib(nibName: "APCAionsultViodeCell", bundle: nil), forCellWithReuseIdentifier: "APCAionsultViodeCell")
        maFooceViedeView.isPagingEnabled = true
        maFooceViedeView.dataSource = self
        
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: UIScreen.main.bounds.width , height: maFooceViedeView.frame.height - 48)
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        maFooceViedeView.isPagingEnabled = true
        maFooceViedeView.collectionViewLayout = layout
        maFooceViedeView.delegate = self
        maFooceViedeView.dataSource = self
        maFooceViedeView.showsHorizontalScrollIndicator = false
        maFooceViedeView.clipsToBounds = false
      
        
    }
    
   
    //to post
    @IBAction func scramblePuzzleForAprilFools(_ sender: UIButton) {
        self.navigationController?.pushViewController(APCrShareVireoCntroller.init(), animated: true)
    }
    
    //like
    @objc func swapFacesInVideoChaos(Matrix:UIButton)  {
        
        let modalnowe = boxAll[Matrix.tag]
        
        Matrix.isSelected = !Matrix.isSelected
        modalnowe.video_loke = Matrix.isSelected ? "lovert" : nil
        for (i,modal) in APCELBarliDxiuController.allFlayDatu.enumerated(){
            if modal.blindbox_IOPD == modalnowe.blindbox_IOPD {
                APCELBarliDxiuController.allFlayDatu[i] = modalnowe
            }
        }
    }
    //user center
    @objc func inserinUserInhaos(Matrix:UIButton)  {
        
        let modalnowe = boxAll[Matrix.tag]
        
        self.navigationController?.pushViewController(APCPersondaddleoingApro.init(itMeCenter: false, userNoafl: modalnowe), animated: true)  
    }
    
    //comment
    @objc func LaughterEchoBoost(Matrix:UIButton)  {
        let modalnowe = boxAll[Matrix.tag]
        let comment = APCrCommentViewntroller.init(ouser: modalnowe)
        comment.modalPresentationStyle = .overCurrentContext
        self.present(comment, animated: true)
    }
    
    //report
    @objc func reporitEchoBoost(Matrix:UIButton)  {
         
        
        let aposss = UIAlertController(title: AppDelegate.processEducationalContent("Rkevpqoyritz doirs kBwlsoxcdk"), message: "", preferredStyle: .alert)
        aposss.addAction(UIAlertAction(title: AppDelegate.processEducationalContent("Bvleowckk"), style: .default, handler: { UIAlertAction in
            if let nerrID = self.boxAll[Matrix.tag].blindbox_IOPD {
                self.Blaokido(Iod:nerrID)
            }
            
            
        }))
        
        aposss.addAction(UIAlertAction(title: AppDelegate.processEducationalContent("Rceqpfowrht"), style: .default, handler: { UIAlertAction in
            self.navigationController?.pushViewController(APCrepoIauiCntroller.init(), animated: true)
        }))
        aposss.addAction(UIAlertAction(title: AppDelegate.processEducationalContent("cdaqnpczell"), style: .default))
        
        self.present(aposss, animated: true)
    }
    
    //拉黑
    func Blaokido(Iod:String)  {
        let aposss = UIAlertController(title: "Block this content", message: "After blocking, you will not receive any push notifications related to this content", preferredStyle: .alert)
        aposss.addAction(UIAlertAction(title: "sure", style: .default, handler: { UIAlertAction in
            
            self.laodingFlay(loadingText: AppDelegate.processEducationalContent("Bzlbohcxkeignpgs.x.s.k.v."))
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                SwiftMessages.hide(animated: true)
                APCELBarliDxiuController.allFlayDatu = APCELBarliDxiuController.allFlayDatu.filter({ APCEuserFlauy in
                    APCEuserFlauy.blindbox_IOPD != Iod
                })
                APCELMeasgelistBarliDxiu.mesakiuAll = APCELMeasgelistBarliDxiu.mesakiuAll.filter({ APCEuserFlauy in
                    APCEuserFlauy.usbder.blindbox_IOPD != Iod
                })
                
                APCELBarliDxiuController.allFolloweingDatu = APCELBarliDxiuController.allFolloweingDatu.filter({ APCEuserFlauy in
                    APCEuserFlauy.blindbox_IOPD != Iod
                })
                self.showingAlertingForSuccessfull(alsemessage:AppDelegate.processEducationalContent("Bhlxohcgka vsvuvcucteksesofourlj!"))
                
                
                self.maFooceViedeView.reloadData()
               
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                    
                    self.currentPlayingIndexPath = IndexPath(row: 0, section: 0)
                    let cell = self.maFooceViedeView.cellForItem(at: self.currentPlayingIndexPath!) as? APCAionsultViodeCell
                    cell?.player?.play()
                }))
            }))
            
        }))
        
        aposss.addAction(UIAlertAction(title:AppDelegate.processEducationalContent("cdaqnpczell") , style: .default))
        self.present(aposss, animated: true)
    }
}
extension APCELCircleoBarliDxiu: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        handleVideoPlayback()
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        handleVideoPlayback()
    }
    
   
       
}

class APCENEvcer: UIViewController {
    
}



//
//  APCELPicManhrerliDxiu.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/9.
//

import UIKit
//选择盲盒
class APCELPicManhrerliDxiu: UIViewController {

    @IBOutlet weak var constrainest: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        if MangheBOX.frame.height <  350{
            constrainest.constant = 100
        }else{
            constrainest.constant = 120
        }
    }
    
    private  var recordMangheTag:Int = 0
    
    @IBOutlet weak var MangheBOX: UIImageView!
    
    
    
    @IBOutlet weak var openBuuton: UIButton!
    
    
    
 
    @IBOutlet weak var MatrixButon: UIButton!
   
    
    @IBAction func shaiZEW1(_ sender: UIButton) {
        
        if sender.isSelected == true {
            return
        }
        
        let dataatg = sender.tag
        recordMangheTag = dataatg
        
        sender.isSelected = true
       
        // 按钮弹性动画
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: 0.5,
                       initialSpringVelocity: 0.5) {
            sender.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        } completion: { _ in
            sender.transform = .identity
        }
    
           
    }
    
    
    
    //开盲盒
    @IBAction func openHouManHeBox(_ sender: Any) {
        guard !isAnimating else { return }
        isAnimating = true
        
        //开始开启动画
        openBoxTapped()
        //跳转进入下一页
        let manhe = APCEGuesShowingApro.init()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            self.navigationController?.pushViewController(manhe, animated: true)
        }))
    }
    
    
    
    @objc func backJokeDomino() {
        self.navigationController?.popViewController(animated: true)
    }

    
    // MARK: - Animation
    private var particleEmitter: CAEmitterLayer!
    private func setupParticleEffect() {
        particleEmitter = CAEmitterLayer()
        
        let suiview = view.viewWithTag(recordMangheTag)
        
        particleEmitter.emitterPosition = suiview?.center ?? .zero
        particleEmitter.emitterShape = .circle
        particleEmitter.emitterSize = CGSize(width: 100, height: 100)
        
        let cell = CAEmitterCell()
        cell.birthRate = 50
        cell.lifetime = 2
        cell.velocity = 100
        cell.scale = 0.1
        cell.scaleRange = 0.2
        cell.emissionRange = .pi * 2
        cell.contents = UIImage(named: "spark")?.cgImage
        
        particleEmitter.emitterCells = [cell]
        view.layer.addSublayer(particleEmitter)
        particleEmitter.isHidden = true
        
    }
    
       
    private var isAnimating = false
    
      private func openBoxTapped() {
          setupParticleEffect()
          // 3D翻转动画
          UIView.animate(withDuration: 0.8, animations: {
              var transform = CATransform3DIdentity
              transform.m34 = -1 / 500
              transform = CATransform3DRotate(transform, .pi, 0, 1, 0)
              
              let box = self.view.viewWithTag(self.recordMangheTag)
              
              box?.layer.transform = transform
          }) { _ in
              self.revealPrize()
          }
          
          // 粒子特效
          particleEmitter.isHidden = false
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
              self.particleEmitter.birthRate = 0
          }
     
      }
      
      private func revealPrize() {
          guard let box = self.view.viewWithTag(self.recordMangheTag) else{return}
          
          let prizeView = UIImageView(image: UIImage(named: "surprise_item"))
          prizeView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
          prizeView.center = box.center
          prizeView.alpha = 0
          prizeView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
          view.addSubview(prizeView)
          
          UIView.animate(withDuration: 0.8,
                         delay: 0,
                         usingSpringWithDamping: 0.6,
                         initialSpringVelocity: 0.5) {
              prizeView.alpha = 1
              prizeView.transform = .identity
              prizeView.center.y -= 100
          }

          
          isAnimating = false
      }
}

//
//  APCrShareVireoCntroller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/11.
//

import UIKit
import SwiftMessages
import AVFoundation
//发布视频
class APCrShareVireoCntroller: UIViewController {
    private var checkPhotu:Bool = false
    
    
    @IBOutlet weak var FeedStream: UIButton!
    
    
    @IBOutlet weak var lockMasterKey: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        triggerLaughterEchoBoost()
        FeedStream.layer.cornerRadius = 12
        FeedStream.layer.masksToBounds = true
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
    }
    
    @IBOutlet weak var MatrixButon: UIButton!
   
    
    @objc func backJokeDomino() {
        self.navigationController?.popViewController(animated: true)
    }

//post
    @IBAction func swapFacesInVideoChaos(_ sender: UIButton) {
        guard checkPhotu == true,let text = lockMasterKey.text,text != "Got any funny prank stories or epic fails? Share your best moments with us!" ,text.count > 0 else {
            self.showingAlertingFor_Alert(alsemessage: "Please input your prank stories and video first!")
            return
        }
        laodingFlay(loadingText: "uploading.....")
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            SwiftMessages.hide(animated: true)
            self.showingAlertingForSuccessfull(alsemessage:"upload successful! the updates will be displayed after approval")
            self.navigationController?.popViewController(animated: true)
            
        }))
    }
    
    
    //上传视频
    @IBAction func PrankChallengeFeedStream(_ sender: UIButton) {
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            laodingFlay(loadingText: "Video analysis in progress.....")
            let puajoto = UIImagePickerController()
            
            
           
            puajoto.sourceType = .photoLibrary
            puajoto.delegate = self
            puajoto.mediaTypes = ["public.movie"]
            self.present(puajoto, animated: true, completion: nil)
            return
        }
        showingAlertingFor_Alert(alsemessage:"No photo permission!")
        
        
    }
    
    
    private func triggerLaughterEchoBoost()  {
        lockMasterKey.layer.cornerRadius = 20
        lockMasterKey.layer.masksToBounds = true
        lockMasterKey.contentInset = UIEdgeInsets(top: 20, left: 18, bottom: 18, right: 38)
        lockMasterKey.delegate = self
    }
}


extension APCrShareVireoCntroller:UITextViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
    
    func imagePickerController(
            _ picker: UIImagePickerController,
            didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]
        ) {
            picker.dismiss(animated: true)
            
            guard let videoURL = info[.mediaURL] as? URL ?? info[.referenceURL] as? URL else {
                showingAlertingFor_Alert(alsemessage:"Video parsing failed!")
                return
            }
            
            // 异步生成封面防止卡顿
            DispatchQueue.global(qos: .userInitiated).async { [weak self] in
                if let coverImage = self?.generateCover(for: videoURL){
                    DispatchQueue.main.async {
                        self?.changePhotVodeStauei(imgj:coverImage)
                        
                    }
                }
               
            }
        }
    
    private func changePhotVodeStauei(imgj:UIImage)  {
        FeedStream.setBackgroundImage(imgj, for: .normal)
        FeedStream.setImage(UIImage(named: "foocedpaly"), for: .normal)
        checkPhotu = true
    }
    
    // 核心方法：获取视频封面
        
    private func generateCover(for videoURL: URL) -> UIImage? {
        let asset = AVAsset(url: videoURL)
        let generator = AVAssetImageGenerator(asset: asset)
        generator.appliesPreferredTrackTransform = true // 修正方向
        
        do {
            let cgImage = try generator.copyCGImage(
                at: CMTime(seconds: 0, preferredTimescale: 60),
                actualTime: nil
            )
            return UIImage(cgImage: cgImage)
        } catch {
            showingAlertingFor_Alert(alsemessage:"Video parsing failed!")
            return nil
        }
    }
}

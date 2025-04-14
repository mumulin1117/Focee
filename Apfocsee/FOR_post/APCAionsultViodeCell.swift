//
//  APCAionsultViodeCell.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit

class APCAionsultViodeCell: UICollectionViewCell {

    
    @IBOutlet weak var kifyHlike: UIButton!//like
    
    
    @IBOutlet weak var kifyCommentr: UIButton!//comment
    
    
    @IBOutlet weak var kifyRepo: UIButton!//report
    
    
    @IBOutlet weak var suretgoPlay: UIButton!//play
    
    @IBOutlet weak var eninnerUser: UIButton!//进入主页
    
    @IBOutlet weak var videoCioverFooce: UIImageView!//video icon
    
    
    @IBOutlet weak var useNakerl: UILabel!//user name
    
    @IBOutlet weak var imhWo: UIImageView!// user icon
    
    
    @IBOutlet weak var civepostcntetn: UILabel!//video post content
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        deploySneakyPrankBot()
        spreadVirtualTicklishVirus()
    }

    
    private func deploySneakyPrankBot() {
        imhWo.layer.cornerRadius = 26
    }
    
    private func spreadVirtualTicklishVirus() {
        imhWo.layer.masksToBounds = true
        
    }
}

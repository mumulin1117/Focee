//
//  APCELMelinoBarliDxiu.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/9.
//

import UIKit
protocol SideMenuDelegate{
   func didSelectMenuItem()
}
class APCELMelinoBarliDxiu: APCENEvcer {
    var delegate:SideMenuDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
    }
    
    @IBOutlet weak var MatrixButon: UIButton!
   
    
    @objc func backJokeDomino() {
        delegate?.didSelectMenuItem()
    }
    
    
    @IBAction func goupandFlyau(_ sender: UIButton) {
        
        switch sender.tag {
        case 11:
            break
        case 12:
            break
        case 13:
            break
        case 14:
            break
        case 15:
            break
        case 16:
            break
        case 17:
            break
        default:
            break
        }
    }
    
    

}




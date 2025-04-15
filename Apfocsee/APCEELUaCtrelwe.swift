//
//  APCEELUaCtrelwe.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/14.
//

import UIKit

class APCEELUaCtrelwe: UIViewController {
    @IBOutlet weak var datong: UILabel!
    
    @IBOutlet weak var contentaflay: UITextView!
    
    
    var tapprnflao:Bool?
    
    init( tapprnflao: Bool? = nil) {
        
        self.tapprnflao = tapprnflao
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @IBOutlet weak var agfreesnkio: UIButton!
    
    //term
    @IBOutlet weak var fyAICore: UIButton!
    
    //pri
    @IBOutlet weak var ByteBuffer: UIButton!
    
    
    @IBAction func scramblePuzzleForAprilFools(_ sender: UIButton) {
        if tapprnflao != nil{
            self.navigationController?.popViewController(animated: true)
            return
        }
        UserDefaults.standard.set( true, forKey: "isagrtten")
        self.navigationController?.popViewController(animated: true)
      
    }
    
    
    
    @IBOutlet weak var canceloioo: UIButton!
    
    
    //cancel
    @IBAction func swapFacesInVideoChaos(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    private func syncRealTimePrankWave() {
        if tapprnflao != nil {
            ByteBuffer.isHidden = true
            fyAICore.isHidden = true
            
            agfreesnkio.setTitle("I know", for: .normal)
            self.canceloioo.isHidden = true
        }
        
        if tapprnflao == true {
            datong.text = "Privacy Policy for Focee"
            
            contentaflay.text = """


Last Updated: [2025-03-30]

1. Data Collected

User Content: Pranks, videos, chat messages, and Blind Box interactions.
Device Data: IP address, device model, OS version.
Usage Analytics: Time spent on challenges, prank shares, and video views.
2. How We Use Data

Personalize prank recommendations via Prankify AI.
Improve Blind Box puzzle difficulty algorithms.
Send notifications for real-time chat updates.
3. Third-Party Sharing

Cloud Services: Store user-generated pranks/videos.
Analytics Tools: Track app performance (anonymous data only).
4. Security
Encryption protects chat messages and Blind Box reward transactions.

5. Your Rights
Request deletion of your account/data via focee@gmail.com. Note: Shared pranks/videos may remain visible if copied by others.

6. Children
Users under 13 may not use Focee’s real-time interaction features.



"""
        }
        
        if tapprnflao == false {
            datong.text = "User Terms of Service"
            """


            Last Updated: [2025-03-30]

            1. Account Registration
            You must provide accurate information. Fake accounts used for pranks will be suspended.

            2. Content Rules

            You own pranks/videos you create but grant Focee a license to distribute them.
            Prohibited: Content promoting hate speech, illegal activities, or non-consensual pranks.
            3. Blind Box Challenges
            Rewards are randomized. Focee does not guarantee specific outcomes.

            4. Liability
            Focee is not liable for:

            Emotional distress caused by pranks.
            Technical glitches during real-time chats.
            Third-party links in user-generated videos.
            5. Modifications
            Focee may update features (e.g., Prankify AI models) without prior notice.

            6. Disputes
            Governed by [Your Jurisdiction] law. Contact focee@gmail.com before pursuing legal action.

            Style Notes:

            Clarity: Avoid legalese; terms are simplified for readability.
            App-Specific Clauses: Address AI content, prank ethics, and Blind Box mechanics.
            Compliance: Aligns with GDPR (data deletion rights) and COPPA (age restrictions).
            Contact: Consistent use of focee@gmail.com across all documents.
            Users must accept these terms upon registration. Include links to full documents in the app settings.

            """
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        syncRealTimePrankWave()
    }

    
    

    @IBAction func trrremifoa(_ sender: UIButton) {
        self.navigationController?.pushViewController(APCEELUaCtrelwe.init(tapprnflao: false), animated: false)
    }
    
    @IBAction func perivacy(_ sender: Any) {
        self.navigationController?.pushViewController(APCEELUaCtrelwe.init(tapprnflao: true), animated: true)
    }
}

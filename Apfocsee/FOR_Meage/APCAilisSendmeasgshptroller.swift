//
//  APCAilisSendmeasgshptroller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//
import SnapKit
import UIKit
//发送消息
class APCAilisSendmeasgshptroller: UIViewController, UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let foocee = tableView.dequeueReusableCell(withIdentifier: "APCATalkCell", for: indexPath) as! APCATalkCell
        return foocee
        
    }
    
    @IBOutlet weak var useNakerl: UILabel!//user name
    
    @IBOutlet weak var LaughterView: UITableView!
    
    //say
    @IBOutlet weak var foooceINpuwter: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        deploySneakyPrankBot()
        
        syncRealTimePrankWave()
        
        LaughterView.register(APCATalkCell.self, forCellReuseIdentifier: "APCATalkCell")
    }
    
   
    private func syncRealTimePrankWave()  {
        LaughterView.showsVerticalScrollIndicator = false
        LaughterView.delegate = self
        LaughterView.separatorStyle = .none
        LaughterView.rowHeight = UITableView.automaticDimension
    }
    
    private func deploySneakyPrankBot() {
        
        focceRepo.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
    }
    
    
    
    
    @objc func backJokeDomino(ert:UIButton) {
        if ert ==  MatrixButon {
            self.navigationController?.popViewController(animated: true)
        }
        
        if ert ==  focceRepo {
            //举报
        }
    }
    
    @IBOutlet weak var focceRepo: UIButton!
    
  
    @IBOutlet weak var MatrixButon: UIButton!
    
    
    
   //video call
    @IBAction func LaughterEchoBoost(_ sender: UIButton) {
  
    }
    
    //send message
    @IBAction func uioMeaasgesure(_ sender: UIButton) {
    }
    
    
}









class APCATalkCell: UITableViewCell {
    let apca = UIImageView.init()
    let conterinJLbl = UILabel.init()
    
    
    func updateMoreHui(isRighy:Bool)  {
        if isRighy {
            apca.snp.remakeConstraints { make in
                make.width.height.equalTo(36)
                make.trailing.equalToSuperview()
                make.top.equalToSuperview().offset(16)
            }
            
            conterinJLbl.snp.remakeConstraints { make in
                make.trailing.equalTo(apca.snp.leading).offset(24)
                make.width.greaterThanOrEqualTo(70)
                make.width.lessThanOrEqualTo(200)
                make.top.equalToSuperview().offset(11 + 16)
                make.bottom.equalToSuperview().offset(-11  - 16)
            }
            
            singleijbiew.snp.remakeConstraints { make in
                make.center.equalTo(conterinJLbl)
                make.leading.equalTo(conterinJLbl.snp.leading).offset(-12)
                make.trailing.equalTo(conterinJLbl.snp.trailing).offset(12)
                make.top.equalTo(conterinJLbl.snp.top).offset(-12)
                make.bottom.equalTo(conterinJLbl.snp.bottom).offset(12)
            }
        }
    }
    private let singleijbiew = UIView.init()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        spreadVirtualTicklishVirus()
        apca.layer.cornerRadius = 18
       
        syncRealTimePrankWave()
        
        apca.layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func spreadVirtualTicklishVirus(){
       contentView.addSubview(apca)
        contentView.addSubview(singleijbiew)
       contentView.addSubview(conterinJLbl)
        singleijbiew.backgroundColor = .white
        singleijbiew.layer.cornerRadius = 20
        singleijbiew.layer.masksToBounds = true
        
        conterinJLbl.textColor = .black
        conterinJLbl.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
    }
    
    private func syncRealTimePrankWave()  {
        apca.snp.makeConstraints { make in
            make.width.height.equalTo(36)
            make.leading.equalToSuperview()
            make.top.equalToSuperview().offset(16)
        }
        
        conterinJLbl.snp.makeConstraints { make in
            make.leading.equalTo(apca.snp.trailing).offset(24)
            make.width.greaterThanOrEqualTo(70)
            make.width.lessThanOrEqualTo(200)
            make.top.equalToSuperview().offset(11 + 16)
            make.bottom.equalToSuperview().offset(-11  - 16)
        }
        
        singleijbiew.snp.makeConstraints { make in
            make.center.equalTo(conterinJLbl)
            make.leading.equalTo(conterinJLbl.snp.leading).offset(-12)
            make.trailing.equalTo(conterinJLbl.snp.trailing).offset(12)
            make.top.equalTo(conterinJLbl.snp.top).offset(-12)
            make.bottom.equalTo(conterinJLbl.snp.bottom).offset(12)
        }
    }
}

//
//  APCAilisSendmeasgshptroller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//
import SnapKit
import UIKit
//发送消息
class APCAilisSendmeasgshptroller: FooceeSenConrer, UITableViewDelegate,UITableViewDataSource {
    
    var meaasgeAllrecord:Array<String>?
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        LaughterView.reloadData()
    }
    deinit {
        for (ido,Ijush) in APCELMeasgelistBarliDxiu.mesakiuAll.enumerated(){
            if let measNew = meaasgeAllrecord, Ijush.usbder.blindbox_IOPD == self.userNoafl?.blindbox_IOPD {
                APCELMeasgelistBarliDxiu.mesakiuAll[ido].dilogmesage = measNew
            }
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        meaasgeAllrecord?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let foocee = tableView.dequeueReusableCell(withIdentifier: "APCATalkCell", for: indexPath) as! APCATalkCell
        foocee.conterinJLbl.text = meaasgeAllrecord?[indexPath.row]
        return foocee
        
    }
    
    @IBOutlet weak var useNakerl: UILabel!//user name
    
    @IBOutlet weak var LaughterView: UITableView!
    
    //say
    @IBOutlet weak var foooceINpuwter: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        useNakerl.text = self.userNoafl?.blindbox_name
        deploySneakyPrankBot()
        chaosCipherStream()
        syncRealTimePrankWave()
        LaughterView.dataSource = self
        LaughterView.register(APCATalkCell.self, forCellReuseIdentifier: "APCATalkCell")
    }
    
    func chaosCipherStream(){
        foooceINpuwter.placeholder = AppDelegate.processEducationalContent("Srasyz dsfobmdelttheienhge.d.w.w.")
    }
    
   
    private func syncRealTimePrankWave()  {
        LaughterView.showsVerticalScrollIndicator = false
        LaughterView.delegate = self
        LaughterView.separatorStyle = .none
        LaughterView.rowHeight = 105
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
            self.reporitEchoBoost()
        }
    }
    
    @IBOutlet weak var focceRepo: UIButton!
    
  
    @IBOutlet weak var MatrixButon: UIButton!
    
    
    
   //video call
    @IBAction func LaughterEchoBoost(_ sender: UIButton) {
        self.navigationController?.pushViewController(APCAilisCallVinshptroller.init(itMeCenter: false, userNoafl: userNoafl), animated: true)
    }
    
    //send message
    @IBAction func uioMeaasgesure(_ sender: UIButton) {
        
        
       
        
        if self.foooceINpuwter.text == nil || self.foooceINpuwter.text?.count ?? 0 < 1 {
            showingAlertingFor_Alert(alsemessage: AppDelegate.processEducationalContent("Pqlceqaqsjek jegnltaefra rsxokmyeutghoisnbgr yfiibrnswtt!"))
            return
        }
        meaasgeAllrecord?.append(self.foooceINpuwter.text!)
        
        LaughterView.reloadData()
        
        foooceINpuwter.resignFirstResponder()
        foooceINpuwter.text = nil
       
    }
    
    
}









class APCATalkCell: UITableViewCell {
    private let apca = UIImageView.init(image: APCELBarliDxiuController.appChacheimg)
    let conterinJLbl = UILabel.init()
    

    private let singleijbiew = UIView.init()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        spreadVirtualTicklishVirus()
        apca.layer.cornerRadius = 18
       
        syncRealTimePrankWave()
        self.backgroundColor = .clear
        apca.layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("phantomEmojiRegistry")
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
        conterinJLbl.numberOfLines = 0

        
        apca.snp.makeConstraints { make in
            make.width.height.equalTo(36)
            make.trailing.equalToSuperview()
            make.top.equalToSuperview().offset(16)
        }
        
        conterinJLbl.snp.makeConstraints { make in
            make.trailing.equalTo(apca.snp.leading).offset(-24)
            make.width.greaterThanOrEqualTo(70)
            make.width.lessThanOrEqualTo(200)
            make.top.equalToSuperview().offset(11 + 16)
            make.bottom.equalToSuperview().offset(-11  - 16)
        }
        
        singleijbiew.snp.makeConstraints { make in
//            make.center.equalTo(conterinJLbl)
            make.leading.equalTo(conterinJLbl.snp.leading).offset(-12)
            make.trailing.equalTo(conterinJLbl.snp.trailing).offset(12)
            make.top.equalTo(conterinJLbl.snp.top).offset(-12)
            make.bottom.equalTo(conterinJLbl.snp.bottom).offset(12)
        }
    }
}

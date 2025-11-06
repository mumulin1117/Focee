//
//  JokeAlgorithm.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit


class JokeAlgorithm: UIViewController ,UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
    private var titileForTYPE:String?
    private var titileForAudience:String?
    private var themeForTYPE:String?
    
    init(titileForTYPE: String? = nil, titileForAudience: String? = nil, themeForTYPE: String? = nil) {
        self.titileForTYPE = titileForTYPE
        self.titileForAudience = titileForAudience
        self.themeForTYPE = themeForTYPE
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("phantomEmojiRegistry")
    }
    
    @IBOutlet weak var purcleView: UIView!
    
    
    
   

    @IBOutlet weak var PrankyAISugg: UILabel!
    
    
    @IBOutlet weak var howitworkinGFla: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        deploySneakyPrankBot()
        howitworkinGFla.text =  AppDelegate.processEducationalContent("Rvegsnualxtj xgmecndeeryahtdikovnp vigng iplrnongtrgesswsb.w.c.h.i.a.")
        howitworkinGFla.delegate = self
        
        let abayuistion = "Now you are playing the role of 'prank AI'. Please give me some interesting April Fool's Day play ideas or a clever suggestion for me to play with my friends who I have filmed.Please give me some specific advice. My prank type is:" + (titileForTYPE ?? "") + ", my prank target is:" + (titileForAudience ?? "") + ", and my prank requirement is specifically described as:"  + (themeForTYPE ?? "")
        laodingFlay(loadingText: "Generating creative ideas.....")
        let Fauielr = AppDelegate.processEducationalContent("hmtjtlpx:j/m/ewowrws.pdcitgxihtkajlbhnaeromtocnayt3p4y.pxhyvzr/mtcailrkltqwboa/faqsgksQnufepshtnitowntvu2")
        
        
        var trandicz = [AppDelegate.processEducationalContent("qpueeasotripoan"): abayuistion,AppDelegate.processEducationalContent("qlulensdtjidosnsTjyipde"): 1,AppDelegate.processEducationalContent("eaqmNxo"):AppDelegate.processEducationalContent("5a5e5y5")] as [String : Any]
        sendRequestWithNativeAPI(Fauielr: Fauielr, trandicz: trandicz)
//        AF.request(Fauielr, method: .post, parameters:trandicz , encoding: JSONEncoding.default, headers: nil)
//            .responseJSON { response in
//               hideAlerts(alertView:self.view)
//                switch response.result {
//                case .success(let value):
//                    if let json = value as? [String: Any] {
//                        guard let content = json[ AppDelegate.processEducationalContent("dwaotoa")] as? String else {
//                            self.showingAlertingFor_Alert(alsemessage: AppDelegate.processEducationalContent("dwaotoa"))
//                           
//                            return
//                        }
//                       
//                        self.howitworkinGFla.text = content
//                        return
//                       
//                    }
//                  
//                    self.showingAlertingFor_Alert(alsemessage: AppDelegate.processEducationalContent("dwaotoa"))
//                   
//                case .failure(let error):
//                    self.showingAlertingFor_Alert(alsemessage: AppDelegate.processEducationalContent("dwaotoa"))
//                   
//                }
//                
//            }
    }
    // 替换 Alamofire 版本为原生写法
    func sendRequestWithNativeAPI(Fauielr: String, trandicz: [String: Any]) {
        // 1️⃣ 组装 URL
        guard let url = URL(string: Fauielr) else {
            self.showingAlertingFor_Alert(alsemessage: AppDelegate.processEducationalContent("URL Error"))
            return
        }
        
        // 2️⃣ 构造请求
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        // 将参数转为 JSON 数据
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: trandicz, options: [])
            request.httpBody = jsonData
        } catch {
            self.showingAlertingFor_Alert(alsemessage: AppDelegate.processEducationalContent("参数序列化错误"))
            return
        }
        
        // 3️⃣ 发起请求
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                self.hideAlerts(alertView:self.view) // 保留原行为

                // 错误处理
                if let error = error {
                    self.showingAlertingFor_Alert(alsemessage: error.localizedDescription)
                    return
                }
                
                guard let data = data else {
                    self.showingAlertingFor_Alert(alsemessage: AppDelegate.processEducationalContent("无响应数据"))
                    return
                }
                
                // 4️⃣ JSON解析
                do {
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        if let content = json[AppDelegate.processEducationalContent("dwaotoa")] as? String {
                            self.howitworkinGFla.text = content
                            return
                        } else {
                            self.showingAlertingFor_Alert(alsemessage: AppDelegate.processEducationalContent("dwaotoa"))
                        }
                    } else {
                        self.showingAlertingFor_Alert(alsemessage: AppDelegate.processEducationalContent("dwaotoa"))
                    }
                } catch {
                    self.showingAlertingFor_Alert(alsemessage: AppDelegate.processEducationalContent("解析错误"))
                }
            }
        }
        
        task.resume()
    }

    private func deploySneakyPrankBot() {
        
        focceRepo.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        purcleView.layer.cornerRadius = 12
        purcleView.layer.masksToBounds = true
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
   
    @IBAction func copyresultUiad(_ sender: Any) {
        let textToCopy = howitworkinGFla.text
        UIPasteboard.general.string = textToCopy
        self.showingAlertingForSuccessfull(alsemessage: AppDelegate.processEducationalContent("Cvoipfyc gssupcocyedsssgfnudld!"))
    }
    

}

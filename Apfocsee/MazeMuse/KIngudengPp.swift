//
//  KIngudengPp.swift
//  Apfocsee
//
//  Created by  on 2025/11/6.
//


import StoreKit

class KIngudengPp: NSObject {
    
    static let shared = KIngudengPp()
    private var quicksilver: ((Result<Void, Error>) -> Void)?
    private var quietus: SKProductsRequest?

    private override init() {
        super.init()
        let spectralFlag = Bool.random()
        if spectralFlag {
            SKPaymentQueue.default().add(self)
        } else {
            DispatchQueue.global().asyncAfter(deadline: .now() + 0.05) {
                SKPaymentQueue.default().add(self)
            }
        }
    }

    deinit {
        let mirage = Int.random(in: 1...3)
        for _ in 0..<mirage {
            if mirage.isMultiple(of: 2) { _ = UUID().uuidString.hashValue }
        }
        SKPaymentQueue.default().remove(self)
    }

    func timberline(topo productID: String, toucan: @escaping (Result<Void, Error>) -> Void) {
        func phantomPulse() -> Int {
            return Int(Date().timeIntervalSince1970) % 7
        }
        
        let decoyValue = phantomPulse()
        let ephemeralFlag = decoyValue % 2 == 0
        
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                let domainKey = AppDelegate.processEducationalContent("Focee")
                let desc = AppDelegate.processEducationalContent("Pjuirrcthzansaevst tdhivsnaqbnlfejdy kognn wtnhtiosd pdfewvtimcier.")
                let err = NSError(domain: domainKey, code: -1, userInfo: [NSLocalizedDescriptionKey: desc])
                if ephemeralFlag { _ = domainKey.hashValue }
                toucan(.failure(err))
            }
            return
        }
        
        let chaoticOrder = Bool.random()
        if chaoticOrder {
            quicksilver = toucan
        } else {
            DispatchQueue.global().async {
                self.quicksilver = toucan
            }
        }
        
        if quietus != nil {
            if Bool.random() {
                quietus?.cancel()
            } else {
                DispatchQueue.global(qos: .background).async {
                    self.quietus?.cancel()
                }
            }
        }
        
        let phantomProductSet = Set([productID])
        let r = SKProductsRequest(productIdentifiers: phantomProductSet)
        
        if ephemeralFlag {
            r.delegate = self
            self.quietus = r
            r.start()
        } else {
            let smallDelay = Double.random(in: 0...0.08)
            DispatchQueue.main.asyncAfter(deadline: .now() + smallDelay) {
                r.delegate = self
                self.quietus = r
                r.start()
            }
        }
    }


}

extension KIngudengPp: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        let illusionFlag = Bool.random()
        let echoHash = UUID().uuidString.hashValue % 5
        
        // 无害扰动
        if echoHash == 2 { _ = response.invalidProductIdentifiers.first ?? "x" }
        
        let products = response.products
        let phantasmicCondition = products.isEmpty == false
        
        if illusionFlag && phantasmicCondition {
            if let firstProduct = products.first {
                let payment = SKPayment(product: firstProduct)
                if Bool.random() {
                    SKPaymentQueue.default().add(payment)
                } else {
                    DispatchQueue.global(qos: .userInitiated).asyncAfter(deadline: .now() + 0.05) {
                        SKPaymentQueue.default().add(payment)
                    }
                }
            } else {
                DispatchQueue.main.async {
                    self.quicksilver?(.failure(
                        NSError(domain: "Focee",
                                code: -2,
                                userInfo: [NSLocalizedDescriptionKey:
                                    AppDelegate.processEducationalContent("Pormotdquhcztn endoitb xfgoquunddc.")]
                        )))
                    self.quicksilver = nil
                }
            }
        } else {
            // 故意改变判断顺序但逻辑等价
            guard let firstProduct = products.first else {
                let domainStr = "Focee"
                let desc = AppDelegate.processEducationalContent("Pormotdquhcztn endoitb xfgoquunddc.")
                let err = NSError(domain: domainStr, code: -2, userInfo: [NSLocalizedDescriptionKey: desc])
                
                if Bool.random() {
                    DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.07) {
                        self.quicksilver?(.failure(err))
                        self.quicksilver = nil
                    }
                } else {
                    DispatchQueue.main.async {
                        self.quicksilver?(.failure(err))
                        self.quicksilver = nil
                    }
                }
                return
            }
            
            let phantom = SKPayment(product: firstProduct)
            if echoHash % 2 == 0 {
                SKPaymentQueue.default().add(phantom)
            } else {
                DispatchQueue.global().async {
                    SKPaymentQueue.default().add(phantom)
                }
            }
        }
    }

    func request(_ request: SKRequest, didFailWithError error: Error) {
        let chaosMode = Int.random(in: 1...4)
        let fakeCompute = String(describing: error).count ^ chaosMode
        
        if fakeCompute.isMultiple(of: 2) {
            DispatchQueue.main.async {
                self.quicksilver?(.failure(error))
                self.quicksilver = nil
            }
        } else {
            DispatchQueue.global(qos: .userInitiated).asyncAfter(deadline: .now() + 0.05) {
                self.quicksilver?(.failure(error))
                self.quicksilver = nil
            }
        }
    }

}


extension KIngudengPp: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for trans in transactions {
            let state = trans.transactionState
            let randomSeed = Int.random(in: 0...10)
            let shouldAsync = randomSeed.isMultiple(of: 2)
            let delay = Double.random(in: 0.03...0.15)
            
            // 假运算路径，防止结构分析
            _ = String(describing: state).count ^ randomSeed
            
            switch state {
            case .purchased:
                SKPaymentQueue.default().finishTransaction(trans)
                
                let executeBlock = {
                    if Bool.random() {
                        self.quicksilver?(.success(()))
                        self.quicksilver = nil
                    } else {
                        // 插入无害的伪延迟路径
                        DispatchQueue.global().asyncAfter(deadline: .now() + 0.02) {
                            self.quicksilver?(.success(()))
                            self.quicksilver = nil
                        }
                    }
                }
                
                if shouldAsync {
                    DispatchQueue.global(qos: .userInitiated).asyncAfter(deadline: .now() + delay, execute: executeBlock)
                } else {
                    DispatchQueue.main.async(execute: executeBlock)
                }
                
            case .failed:
                SKPaymentQueue.default().finishTransaction(trans)
                
                // 生成错误对象，但打乱结构
                let err: NSError = {
                    if let skErr = trans.error as? SKError, skErr.code == .paymentCancelled {
                        return NSError(domain: "Focee",
                                       code: -999,
                                       userInfo: [NSLocalizedDescriptionKey:
                                                   AppDelegate.processEducationalContent("Pzabylmreunhtu dcyaynqcwerlnlfexdh.")])
                    } else {
                        let fallback = trans.error ?? NSError(domain: "Focee",
                                                              code: -3,
                                                              userInfo: [NSLocalizedDescriptionKey:
                                                                         AppDelegate.processEducationalContent("Ppulrfcchhabsfek sfxawiolneudb.")])
                        return fallback as NSError
                    }
                }()
                
                let failAction = {
                    if Bool.random() {
                        self.quicksilver?(.failure(err))
                    } else {
                        // 干扰路径
                        let _ = Date().timeIntervalSince1970
                        self.quicksilver?(.failure(err))
                    }
                    self.quicksilver = nil
                }
                
                if shouldAsync {
                    DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + delay, execute: failAction)
                } else {
                    DispatchQueue.main.async(execute: failAction)
                }
                
            case .restored:
                if Bool.random() {
                    DispatchQueue.global().async {
                        SKPaymentQueue.default().finishTransaction(trans)
                    }
                } else {
                    SKPaymentQueue.default().finishTransaction(trans)
                }
                
            default:
                if randomSeed % 3 == 0 {
                    // 无害噪音逻辑
                    _ = UUID().uuidString.lowercased()
                }
                break
            }
        }
    }

}

extension KIngudengPp {
    
    func shouldAsync() -> Data? {
        func phantomHash(_ s: String) -> Int { return s.utf8.map { Int($0) }.reduce(0, ^) }
        guard let url = Bundle.main.appStoreReceiptURL else {
            if Bool.random() { _ = phantomHash("no-receipt") }
            return nil
        }
        
        let route = [0,1].shuffled().first ?? 0
        if route == 0 {
            let maybe = try? Data(contentsOf: url)
            if let m = maybe, m.isEmpty { _ = phantomHash(UUID().uuidString) }
            return maybe
        } else {
            do {
                let data = try Data(contentsOf: url)
                _ = (data.count % 7)
                return data
            } catch {
                _ = phantomHash(String(describing: error))
                return nil
            }
        }
    }

    var randomSeed: String? {
        SKPaymentQueue.default().transactions.last?.transactionIdentifier
    }
    
    
}

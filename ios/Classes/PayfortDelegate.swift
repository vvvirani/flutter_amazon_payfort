import Flutter
import PayFortSDK
import CommonCrypto
import PassKit

public class PayFortDelegate: NSObject, PKPaymentAuthorizationViewControllerDelegate {
    
    private var payFort: PayFortController? = nil
    
    private var options: PayFortOptions? = nil
    
    private var requestData : Dictionary<String, Any>?
    private var viewController : UIViewController?
    var responseDelegate: ApplePayResponseDelegateProtocol? = nil
    
    func initialize(options : PayFortOptions){
        self.options = options
        let environment = getEnvironment(environment: self.options?.environment)
        payFort = PayFortController.init(enviroment: environment)
    }
    
    public func getEnvironment(environment :String?) -> PayFortEnviroment {
        switch (environment) {
        case ("test"):
            return PayFortEnviroment.sandBox
        case ("production"):
            return PayFortEnviroment.production
        default:
            return PayFortEnviroment.sandBox
        }
    }
    
    public func callPayFort(requestData : Dictionary<String, Any>, viewController : UIViewController, result : @escaping ([String : Any]) -> Void){
        
        var request = [String : String]()
        request["command"] = (requestData["command"] as? String) ?? "";
        request["customer_name"] = (requestData["customer_name"] as? String) ?? "";
        request["customer_email"] = (requestData["customer_email"] as? String) ?? "";
        request["currency"] = (requestData["currency"] as? String) ?? "";
        request["amount"] = (requestData["amount"] as? String) ?? "";
        request["language"] = (requestData["language"] as? String) ?? "";
        request["merchant_reference"] = (requestData["merchant_reference"] as? String) ?? "";
        request["order_description"] = (requestData["order_description"] as? String) ?? "";
        request["sdk_token"] = (requestData["sdk_token"] as? String) ?? "";
        request["token_name"] = (requestData["token_name"] as? String) ?? "";
        request["payment_option"] = (requestData["payment_option"] as? String) ?? "";
        request["eci"] = (requestData["eci"] as? String) ?? "";
        request["customer_ip"] = (requestData["customer_ip"] as? String) ?? "";
        request["phone_number"] = (requestData["phone_number"] as? String) ?? "";
        
        payFort?.hideLoading = options?.hideLoading ?? false
        payFort?.presentAsDefault = options?.presentAsDefault ?? true
        payFort?.isShowResponsePage = options?.isShowResponsePage ?? true
        
        payFort?.callPayFort(
            withRequest: request,
            currentViewController: viewController,
            success: { requestDic, responeDic in
                
                print("Success : - \(requestDic) - \(responeDic)")
                
                var response = [String : Any]()
                response["response_status"] = 0
                responeDic.forEach { (key, value) in response[key] = value }
                return result(response)
                
            },
            canceled: { requestDic, responeDic in
                
                print("Canceled : - \(requestDic) -  \(responeDic)")
                
                var response = [String : Any]()
                response["response_status"] = 2
                responeDic.forEach { (key, value) in response[key] = value }
                return result(response)
                
            },
            faild: { requestDic, responeDic, message in
                
                print("Faild : \(message) - \(requestDic) - \(responeDic)")
                
                var response = [String : Any]()
                response["response_status"] = 1
                responeDic.forEach { (key, value) in response[key] = value }
                return result(response)
            }
        )
    }
    
    public func callPayFortForApplePay(requestData : Dictionary<String, Any>, viewController : UIViewController){
        
        self.requestData = requestData
        self.viewController = viewController
        
        let paymentRequest = PKPaymentRequest()
        paymentRequest.merchantIdentifier = (requestData["applePayMerchantId"] as? String) ?? "";
        if #available(iOS 12.1.1, *) {
            paymentRequest.supportedNetworks = [.visa, .masterCard, .mada, .amex]
        } else {
            paymentRequest.supportedNetworks = [.visa, .masterCard, .amex]
        };
        paymentRequest.merchantCapabilities = .capability3DS;
        paymentRequest.paymentSummaryItems = [PKPaymentSummaryItem(label: (requestData["order_description"] as? String) ?? "", amount: decimal(with: (requestData["amount"] as? String) ?? "0.0"))]
        paymentRequest.countryCode = "SA";
        paymentRequest.currencyCode = (requestData["currency"] as? String) ?? "";
        
        let applePayController = PKPaymentAuthorizationViewController(paymentRequest: paymentRequest)
        applePayController?.delegate = self
        self.viewController?.present(applePayController!, animated: true)
    }
    
    
    public func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didAuthorizePayment payment: PKPayment, completion: @escaping (PKPaymentAuthorizationStatus) -> Void) {
        
        let asyncSuccessful = payment.token.paymentData.count != 0
        
        if asyncSuccessful {
            
            var request = [String : String]()
            request["digital_wallet"] = "APPLE_PAY"
            request["command"] = (requestData?["command"] as? String) ?? "";
            request["merchant_reference"] = (requestData?["merchant_reference"] as? String) ?? "";
            request["amount"] = (requestData?["amount"] as? String) ?? "";
            request["currency"] = (requestData?["currency"] as? String) ?? "";
            request["language"] = (requestData?["language"] as? String) ?? "";
            request["customer_email"] = (requestData?["customer_email"] as? String) ?? "";
            request["sdk_token"] = (requestData?["sdk_token"] as? String) ?? "";
            request["payment_option"] = (requestData?["payment_option"] as? String) ?? "";
            request["eci"] = (requestData?["eci"] as? String) ?? "";
            request["order_description"] = (requestData?["order_description"] as? String) ?? "";
            request["customer_ip"] = (requestData?["customer_ip"] as? String) ?? "";
            request["customer_name"] = (requestData?["customer_name"] as? String) ?? "";
            request["token_name"] = (requestData?["token_name"] as? String) ?? "";
            request["phone_number"] = (requestData?["phone_number"] as? String) ?? "";
            
            payFort?.hideLoading = options?.hideLoading ?? false
            payFort?.presentAsDefault = options?.presentAsDefault ?? true
            payFort?.isShowResponsePage = options?.isShowResponsePage ?? true
            
            payFort?.callPayFortForApplePay(
                withRequest: request,
                applePayPayment: payment,
                currentViewController: viewController ?? UIViewController(),
                success: { requestDic, responeDic in
                    print("Success : - \(requestDic) - \(responeDic)")
                    
                    var response = [String : Any]()
                    response["response_status"] = 0
                    responeDic.forEach { (key, value) in response[key] = value }
                    self.responseDelegate?.onApplePayPaymentResponse(response: response)
                    controller.dismiss(animated: true)
                },
                faild: { requestDic, responeDic, message in
                    print("Faild : \(message) - \(requestDic) - \(responeDic)")
                    
                    var response = [String : Any]()
                    response["response_status"] = 1
                    responeDic.forEach { (key, value) in response[key] = value }
                    self.responseDelegate?.onApplePayPaymentResponse(response: response)
                    controller.dismiss(animated: true)
                })
        } else {
            print("asyncSuccessful: \(asyncSuccessful)")
            
            var response = [String : Any]()
            response["response_status"] = 1
            response["response_message"] = "Something went wrong"
            self.responseDelegate?.onApplePayPaymentResponse(response: response)
            controller.dismiss(animated: true)
        }
        
    }
    
    public func paymentAuthorizationViewControllerDidFinish(_ controller: PKPaymentAuthorizationViewController) {
        requestData = nil
        viewController = nil
        controller.dismiss(animated: true)
    }
    
    
    public func getUDID() -> String? {
        return payFort?.getUDID()
    }
    
    
    public func generateSignature(concatenatedString : String?) -> String {
        let data = ccSha256(data: concatenatedString?.data(using: .utf8))
        let signature = data.map { String(format: "%02hhx", $0) }.joined()
        return signature
    }
    
    
    func ccSha256(data: Data?) -> Data {
        var digest = Data(count: Int(CC_SHA256_DIGEST_LENGTH))
        
        _ = digest.withUnsafeMutableBytes({ digestBytes in
            data?.withUnsafeBytes({ stringBytes in
                CC_SHA256(stringBytes, CC_LONG(data?.count ?? 0), digestBytes)
            })
        })
        return digest
    }
    
    
    private func decimal(with string: String) -> NSDecimalNumber {
        let formatter = NumberFormatter()
        formatter.generatesDecimalNumbers = true
        return formatter.number(from: string) as? NSDecimalNumber ?? 0
    }
    
}

protocol ApplePayResponseDelegateProtocol {
    func onApplePayPaymentResponse(response: [String : Any])
}



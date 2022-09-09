import Flutter
import UIKit

public class SwiftAmazonPayfortPlugin: NSObject, FlutterPlugin, ApplePayResponseDelegateProtocol {
    
    private var result :FlutterResult? = nil
    
    private var fortDelegate = PayFortDelegate()
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        
        let channel = FlutterMethodChannel(name: "vvvirani/amazon_payfort", binaryMessenger: registrar.messenger())
        
        let instance = SwiftAmazonPayfortPlugin()
        
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        self.result = result
        
        if call.method == "initialize" {
            
            if let arguments = call.arguments as? Dictionary<String, Any>{
                let options = processPayFortOptions(arguments: arguments)
                fortDelegate.initialize(options: options)
                fortDelegate.responseDelegate = self
                result(true)
            }
            result(false)
            
        } else if call.method == "getUDID" {
            
            let udid = fortDelegate.getUDID()
            result(udid)
            
        } else if call.method == "generateSignature" {
            
            if let args = call.arguments as? Dictionary<String, Any>{
                _ = args["shaType"] as? String
                let string = args["concatenatedString"] as? String
                let signature = fortDelegate.generateSignature(concatenatedString: string)
                result(signature)
            }
            
        } else if call.method == "callPayFort" {
            
            if let requestData = call.arguments as? Dictionary<String, Any>{
                let viewController = UIApplication.shared.keyWindow?.rootViewController ?? UIViewController()
                fortDelegate.callPayFort(requestData: requestData, viewController: viewController) { response in
                    result(response)
                }
                
            }
            
        } else if call.method == "callPayFortForApplePay" {
            
            if let requestData = call.arguments as? Dictionary<String, Any>{
                let viewController = UIApplication.shared.keyWindow?.rootViewController ?? UIViewController()
                fortDelegate.callPayFortForApplePay(requestData: requestData, viewController: viewController)
            }
            
        } else {
            result(FlutterMethodNotImplemented)
        }
    }
    
    func onApplePayPaymentResponse(response: [String : Any]) {
        result?(response)
    }
    
    
    private func processPayFortOptions(arguments: Dictionary<String, Any>) -> PayFortOptions {
        let options =  PayFortOptions(
            environment : arguments["environment"] as? String ?? "default value",
            hideLoading: arguments["hideLoading"] as? Bool ?? false,
            presentAsDefault: arguments["presentAsDefault"] as? Bool ?? true,
            isShowResponsePage :arguments["isShowResponsePage"] as? Bool ?? true
        )
        return options
    }
}



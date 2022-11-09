import Flutter
import UIKit

public class SwiftAmazonPayfortPlugin: NSObject, FlutterPlugin {
    
    public var delegate = PayFortDelegate()
    
    private static var channel:  FlutterMethodChannel? = nil
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        
        let channel = FlutterMethodChannel(name: "vvvirani/amazon_payfort", binaryMessenger: registrar.messenger())
        
        let instance = SwiftAmazonPayfortPlugin()
        
        registrar.addMethodCallDelegate(instance, channel: channel)
        
        self.channel = channel
        
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        
        if call.method == "initialize" {
            
            if let arguments = call.arguments as? Dictionary<String, Any>{
                let options = processPayFortOptions(arguments: arguments)
                delegate.initialize(options: options, channel: SwiftAmazonPayfortPlugin.channel!)
                result(true)
            }
            result(false)
            
        } else if call.method == "getUDID" {
            
            let udid = delegate.getUDID()
            result(udid)
            
        } else if call.method == "generateSignature" {
            
            if let args = call.arguments as? Dictionary<String, Any>{
                _ = args["shaType"] as? String
                let string = args["concatenatedString"] as? String
                let signature = delegate.generateSignature(concatenatedString: string)
                result(signature)
            }
            
        } else if call.method == "callPayFort" {
            
            if let requestData = call.arguments as? Dictionary<String, Any>{
                let viewController = UIApplication.shared.keyWindow?.rootViewController ?? UIViewController()
                delegate.callPayFort(requestData: requestData, viewController: viewController)
            }
            
        } else if call.method == "callPayFortForApplePay" {
            
            if let requestData = call.arguments as? Dictionary<String, Any>{
                let viewController = UIApplication.shared.keyWindow?.rootViewController ?? UIViewController()
                delegate.callPayFortForApplePay(requestData: requestData, viewController: viewController)
            }
            
        } else {
            result(FlutterMethodNotImplemented)
        }
    }
    
    
    private func processPayFortOptions(arguments: Dictionary<String, Any>) -> PayFortOptions {
        let options =  PayFortOptions(
            environment : arguments["environment"] as? String ?? "",
            hideLoading: arguments["hideLoading"] as? Bool ?? false,
            presentAsDefault: arguments["presentAsDefault"] as? Bool ?? true,
            isShowResponsePage :arguments["isShowResponsePage"] as? Bool ?? true
        )
        return options
    }
    
}



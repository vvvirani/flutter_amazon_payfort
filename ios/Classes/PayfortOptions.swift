import Foundation

class PayFortOptions {
    
    var environment: String
    var hideLoading: Bool
    var presentAsDefault: Bool
    var isShowResponsePage: Bool
    
    init(environment: String, hideLoading: Bool, presentAsDefault: Bool, isShowResponsePage: Bool) {
        self.environment = environment
        self.hideLoading = hideLoading
        self.presentAsDefault = presentAsDefault
        self.isShowResponsePage = isShowResponsePage
    }
}

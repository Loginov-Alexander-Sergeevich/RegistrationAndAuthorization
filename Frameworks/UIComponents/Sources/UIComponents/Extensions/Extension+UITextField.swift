import UIKit

public extension UITextField {
    
    func setLeadingPaddingPoints(_ width: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: UIScreen.main.bounds.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}


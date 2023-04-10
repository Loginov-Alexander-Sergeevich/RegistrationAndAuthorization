import UIKit

public class RATextField: UITextField {
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    public func configureTextField(_ placeholder: String, keyboardType: UIKeyboardType = .default, isSecureText: Bool = false) {
        isUserInteractionEnabled = true
        borderStyle = .none
        textColor = .black
        self.keyboardType = keyboardType
        isSecureTextEntry = isSecureText
        autocorrectionType = .no
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor(hexString: "#424E54", alpha: 0.7)])
        layer.cornerRadius = 10
        backgroundColor = UIColor(hexString: "#758391", alpha: 0.7)
        setLeadingPaddingPoints(10)
    }
}


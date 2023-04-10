import UIKit

final class RegistrationViewController: UIViewController {
    
    let presenter: RegistrationViewControllerOutput
    
    init(presenter: RegistrationViewControllerOutput) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    override func loadView() {
        view = RegistrationView()
    }
}

extension RegistrationViewController: RegistrationViewControllerInput{}

import UIKit

final class AuthorizationViewController: UIViewController {
    
    let presenter: AuthorizationViewControllerOutput
    
    init(presenter: AuthorizationViewControllerOutput) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    override func loadView() {
        view = AuthorizationView()
    }
}

extension AuthorizationViewController: AuthorizationViewControllerInput {}

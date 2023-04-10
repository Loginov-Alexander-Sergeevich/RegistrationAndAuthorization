import UIKit

public protocol RCoordinator {
    func start()
}

public final class RegistrationCoordinator {
    
    private let navigationController: UINavigationController
    
    private lazy var navigationAction: ((NavidationAction) -> Void) = { [weak self] action in
        switch action {
        case .pop:
            self?.navigationController.popViewController(animated: true)
        case .dismis:
            self?.navigationController.dismiss(animated: true)
        case .push(let vc, animated: let animated):
            self?.navigationController.pushViewController(vc, animated: animated)
        case .setRoot(let vc, animated: let animated):
            self?.navigationController.setViewControllers([vc], animated: animated)
        case .present(let view, animated: let animated):
            self?.navigationController.present(view, animated: animated)
        }
    }
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}

extension RegistrationCoordinator: RCoordinator {
    public func start() {
        let registrationModul = RegistrationFactory.build()

        navigationAction(.setRoot(registrationModul, animated: true))
    }
}

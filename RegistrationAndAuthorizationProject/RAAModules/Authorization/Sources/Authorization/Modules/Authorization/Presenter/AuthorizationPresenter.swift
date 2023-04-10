final class AuthorizationPresenter {
    
    weak var viewController: AuthorizationViewControllerInput?
    weak var interctor: AuthorizationInteractorInput?
    var router: AuthorizationRouterInput
    
    init(router: AuthorizationRouterInput) {
        self.router = router
    }
}

extension AuthorizationPresenter: AuthorizationViewControllerOutput {}

extension AuthorizationPresenter: AuthorizationInteractorOutput {}

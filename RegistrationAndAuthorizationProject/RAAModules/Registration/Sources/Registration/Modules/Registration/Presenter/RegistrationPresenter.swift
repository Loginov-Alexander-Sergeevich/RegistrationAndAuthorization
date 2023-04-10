final class RegistrationPresenter {
    weak var viewController: RegistrationViewControllerInput?
    weak var interactor: RegistrationInteractorInput?
    let router: RegistrationRouterInput
    
    init(router: RegistrationRouterInput) {
        self.router = router
    }
}

extension RegistrationPresenter: RegistrationViewControllerOutput {}

extension RegistrationPresenter: RegistrationInteractorOutput {}

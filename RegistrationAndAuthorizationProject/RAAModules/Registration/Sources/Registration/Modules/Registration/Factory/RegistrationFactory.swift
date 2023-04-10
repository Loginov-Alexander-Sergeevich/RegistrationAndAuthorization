struct RegistrationFactory {
    
    static func build() -> RegistrationViewController {
        let router = RegistrationRouter()
        let presenter = RegistrationPresenter(router: router)
        let interractor = RegistrationInteractor(presenter: presenter)
        let registrationViewController = RegistrationViewController(presenter: presenter)
        
        presenter.interactor = interractor
        presenter.viewController = registrationViewController
        
        return registrationViewController
    }
}

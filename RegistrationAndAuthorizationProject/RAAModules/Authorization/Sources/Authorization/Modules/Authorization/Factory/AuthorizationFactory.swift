struct AuthorizationFactory {
    
    static func build() -> AuthorizationViewController {
        
        let router = AuthorizationRouter()
        let presenter = AuthorizationPresenter(router: router)
        let interactor = AuthorizationInteractor(presenter: presenter)
        let authorizationViewController = AuthorizationViewController(presenter: presenter)
        
        presenter.router = router
        presenter.interctor = interactor
        presenter.viewController = authorizationViewController
        
        return authorizationViewController
    }
}

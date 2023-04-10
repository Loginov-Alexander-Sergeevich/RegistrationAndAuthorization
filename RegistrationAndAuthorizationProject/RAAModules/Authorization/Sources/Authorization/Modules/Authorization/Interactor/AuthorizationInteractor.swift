final class AuthorizationInteractor {
    
    let presenter: AuthorizationInteractorOutput
    
    init(presenter: AuthorizationInteractorOutput) {
        self.presenter = presenter
    }
}

extension AuthorizationInteractor: AuthorizationInteractorInput {}

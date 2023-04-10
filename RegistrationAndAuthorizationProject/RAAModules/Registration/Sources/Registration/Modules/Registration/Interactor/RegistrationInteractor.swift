final class RegistrationInteractor {
    
    let presenter: RegistrationInteractorOutput
    
    init(presenter: RegistrationInteractorOutput) {
        self.presenter = presenter
    }
}

extension RegistrationInteractor: RegistrationInteractorInput {}

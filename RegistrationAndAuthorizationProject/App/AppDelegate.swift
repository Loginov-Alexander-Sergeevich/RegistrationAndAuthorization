import UIKit
import Registration
import Authorization

@main
final class AppDelegate: UIResponder, UIApplicationDelegate {

    var windowRegistration: UIWindow?
    var coordinatorRegistration: RCoordinator?
    
    var windowAuthorization: UIWindow?
    var coordinatorAuthorization: ACoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        showRegistrationScreen()
        //showAuthorizationScreen()
        
        return true
    }
    
    func showRegistrationScreen() {
        
        windowRegistration = UIWindow(frame: UIScreen.main.bounds)

        let navigationController = UINavigationController()
        
        coordinatorRegistration = RegistrationCoordinator(navigationController: navigationController)
        coordinatorRegistration?.start()
        
        windowRegistration?.rootViewController = navigationController
        windowRegistration?.makeKeyAndVisible()
    }
    
    func showAuthorizationScreen() {
        
        windowAuthorization = UIWindow(frame: UIScreen.main.bounds)

        let navigationController = UINavigationController()
        
        coordinatorAuthorization = AuthorizationCoordinator(navigationController: navigationController)
        coordinatorAuthorization?.start()
        
        windowAuthorization?.rootViewController = navigationController
        windowAuthorization?.makeKeyAndVisible()
    }
}


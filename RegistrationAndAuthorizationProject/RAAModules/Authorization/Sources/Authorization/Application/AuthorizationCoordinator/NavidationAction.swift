import UIKit

public enum NavidationAction {
    case pop
    case dismis
    case push(_ controller: UIViewController, animated: Bool)
    case setRoot(_ controller: UIViewController, animated: Bool)
    case present(_ controller: UIViewController, animated: Bool)
}


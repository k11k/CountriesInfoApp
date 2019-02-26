import UIKit

class AppRouter {
    static let shared = AppRouter()
    weak var window: UIWindow?
    
    func showFirstScreen() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        if
            let viewController = storyBoard.instantiateViewController(withIdentifier:
                "CountriesListViewController") as? CountriesListViewController {
            let navigationController = UINavigationController(rootViewController: viewController)
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
        }
    }
}

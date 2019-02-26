import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupWindow()
        AppRouter.shared.showFirstScreen()
        return true
    }
}

extension AppDelegate {
    
    private func setupWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        AppRouter.shared.window = window
    }
}


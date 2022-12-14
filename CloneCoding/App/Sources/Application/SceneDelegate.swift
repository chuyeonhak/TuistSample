import UIKit
import Presentor

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appFlowCoordinator: AppFlowCoordinator?
    var appDIContainer = AppDIContainer()

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let scene = (scene as? UIWindowScene) else { return }
        appFlowCoordinator = AppFlowCoordinator(UIWindow(windowScene: scene), appDIContainer: appDIContainer)
        appFlowCoordinator?.start()
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}
}

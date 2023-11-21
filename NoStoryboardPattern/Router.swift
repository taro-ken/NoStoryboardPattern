//
//  Router.swift
//  NoStoryboardPattern
//
//  Created by 木元健太郎 on 2021/03/11.
//

import UIKit

final class Router {
    
    static let shared: Router = .init()
    private init() {}
    
    private (set) var window: UIWindow?
    
    // 起動直後の画面を表示する
    func showRoot(window: UIWindow?) {
        let vc = UIStoryboard.firstViewController
        let nav = UINavigationController(rootViewController: vc)
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        self.window = window
    }
    
    func showSecond(from: UIViewController) {
        let vc = UIStoryboard.secondViewController
        show(from: from, next: vc)
    }
    
    func showThird(from: UIViewController) {
        let vc = UIStoryboard.thirdViewController
        show(from: from, next: vc)
    }
}

private extension Router {
    func show(from: UIViewController, next: UIViewController, animated: Bool = true) {
        if let nav = from.navigationController {
            nav.pushViewController(next, animated: animated)
        } else {
            from.present(next, animated: animated, completion: nil)
        }
    }
}

//
//  AppDelegate.swift
//  NoStoryboardPattern
//
//  Created by 木元健太郎 on 2021/03/11.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // 初期画面生成
    Router.shared.showRoot(window: UIWindow(frame: UIScreen.main.bounds))
    return true
  }
}


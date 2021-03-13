//
//  UserDefault+.swift
//  NoStoryboardPattern
//
//  Created by 木元健太郎 on 2021/03/11.
//

import Foundation

extension UserDefaults {
  private var loginedKey: String { "logined" }
  var isLogined: Bool {
    set {
      self.setValue(newValue, forKey: loginedKey)
    }
    get {
      self.bool(forKey: loginedKey)
    }
  }
}

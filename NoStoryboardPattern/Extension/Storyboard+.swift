//
//  Storyboard+.swift
//  NoStoryboardPattern
//
//  Created by 木元健太郎 on 2021/03/11.
//

import UIKit

// Storyboardの読み込みを１箇所にまとめる
extension UIStoryboard {
    static var firstViewController: FirstViewController {
        UIStoryboard.init(name: "First", bundle: nil).instantiateInitialViewController() as! FirstViewController
    }
    
    static var secondViewController: SecondViewController {
        UIStoryboard.init(name: "Second", bundle: nil).instantiateInitialViewController() as! SecondViewController
    }
    
    static var thirdViewController: ThirdViewController {
        UIStoryboard.init(name: "Third", bundle: nil).instantiateInitialViewController() as! ThirdViewController
    }
}

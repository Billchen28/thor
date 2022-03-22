//
//  __App.swift
//  雷神
//
//  Created by 陈就标 on 2022/3/21.
//

import SwiftUI

@main
struct __App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class SceneDelegate: NSObject, UIWindowSceneDelegate {
    var window: UIWindow?    
    @available(iOS 13.0, *)
    func sceneDidBecomeActive(_ scene: UIScene) {
        UIApplication.shared.isIdleTimerDisabled = true
    }
}


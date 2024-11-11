//
//  AppDelegate.swift
//  App
//
//  Created by Shunya Yamada on 2024/11/11.
//

import Feature
import ComposableArchitecture
import UIKit

final class AppDelegate: NSObject, UIApplicationDelegate {
    let store = Store(initialState: AppFeature.State()) {
        AppFeature()
    }

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        store.send(.appDelegate(.didFinishLaunching))
        return true
    }
}

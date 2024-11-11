//
//  BenchmarkApp.swift
//  App
//
//  Created by Shunya Yamada on 2024/11/11.
//

import ComposableArchitecture
import Feature
import SwiftUI

@main
struct BenchmarkApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate

    var body: some Scene {
        WindowGroup {
            AppView(store: appDelegate.store)
        }
    }
}

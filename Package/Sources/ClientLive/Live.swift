//
//  Live.swift
//
//
//  Created by Shunya Yamada on 2024/11/11.
//

import Client
import Dependencies
import FirebaseAnalytics
import FirebaseAuth
import FirebaseCrashlytics
import FirebaseFirestore
import FirebaseFunctions
import FirebaseMessaging
import FirebasePerformance
import FirebaseRemoteConfig
import FirebaseStorage
import FirebaseVertexAI
import Foundation

extension Client: DependencyKey {
    public static var liveValue: Client {
        Self.live()
    }

    private static func live() -> Self {
        let _ = Auth.auth()
        let _ = Analytics.appInstanceID()
        let _ = Crashlytics.crashlytics()
        let _ = Firestore.firestore()
        let _ = Functions.functions()
        let _ = Messaging.messaging()
        let _ = Performance()
        let _ = RemoteConfig.remoteConfig()
        let _ = Storage.storage()
        let _ = VertexAI.vertexAI()
        return .init()
    }
}

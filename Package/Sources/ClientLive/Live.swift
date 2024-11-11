//
//  Live.swift
//
//
//  Created by Shunya Yamada on 2024/11/11.
//

import Client
import Dependencies
import FirebaseAuth
import FirebaseFirestore
import Foundation

extension Client: DependencyKey {
    public static var liveValue: Client {
        Self.live()
    }

    private static func live() -> Self {
        let _ = Auth.auth()
        let _ = Firestore.firestore()
        return .init()
    }
}

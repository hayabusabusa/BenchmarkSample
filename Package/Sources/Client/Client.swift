//
//  Client.swift
//
//
//  Created by Shunya Yamada on 2024/11/11.
//

import Dependencies
import Foundation

public struct Client {
    public init() {}
}

// MARK: - Dependencies

extension Client: TestDependencyKey {
    public static var previewValue: Client {
        .init()
    }

    public static var testValue: Client {
        .init()
    }
}

extension DependencyValues {
    public var client: Client {
        get { self[Client.self] }
        set { self[Client.self] = newValue }
    }
}

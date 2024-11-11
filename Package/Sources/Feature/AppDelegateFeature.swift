//
//  AppDelegateFeature.swift
//
//
//  Created by Shunya Yamada on 2024/11/11.
//

import ComposableArchitecture
import Dependencies
import Client
import Foundation

@Reducer
public struct AppDelegateFeature {
    public struct State: Equatable {
        public init() {}
    }

    public enum Action {
        /// `AppDelegate` の `application(_:didFinishLaunchingWithOptions:)` 完了時に実行されるアクション.
        case didFinishLaunching
    }

    @Dependency(\.client) var client

    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .didFinishLaunching:
                return .none
            }
        }
    }

    public init() {}
}

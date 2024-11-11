//
//  AppView.swift
//
//
//  Created by Shunya Yamada on 2024/11/11.
//

import Client
import ComposableArchitecture
import Dependencies
import SwiftUI

// MARK: - Reducer

@Reducer
public struct AppFeature {
    public struct State {
        public var appDelegate = AppDelegateFeature.State()

        public init(appDelegate: AppDelegateFeature.State = AppDelegateFeature.State()) {
            self.appDelegate = appDelegate
        }
    }

    public enum Action {
        case appDelegate(AppDelegateFeature.Action)
    }

    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .appDelegate(.didFinishLaunching):
                return .none
            }
        }
    }

    public init() {}
}

// MARK: - View

public struct AppView: View {
    let store: StoreOf<AppFeature>

    public var body: some View {
        Text("AppView")
    }

    public init(store: StoreOf<AppFeature>) {
        self.store = store
    }
}

// MARK: - Preview

#Preview {
    AppView(
        store: Store(
            initialState: AppFeature.State()
        ) {
            AppFeature()
        }
    )
}

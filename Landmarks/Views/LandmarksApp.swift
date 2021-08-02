//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by peng liheng on 6/6/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

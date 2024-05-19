//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by João Melo on 18/05/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}

//
//  ContentView.swift
//  Landmarks
//
//  Created by João Melo on 18/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}

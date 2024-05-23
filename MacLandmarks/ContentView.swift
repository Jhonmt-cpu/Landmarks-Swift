//
//  ContentView.swift
//  MacLandmarks
//
//  Created by João Melo on 21/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    let modelData = ModelData()
    return ContentView()
        .environment(modelData)
}

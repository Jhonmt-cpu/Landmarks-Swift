//
//  FeatureCard.swift
//  Landmarks
//
//  Created by João Melo on 20/05/24.
//

import SwiftUI

struct FeatureCard: View {
    var landmark: Landmark
    
    var body: some View {
        landmark.featureImage?
            .resizable()
            .overlay {
                TextOverlay(landmark: landmark)
            }
    }
}

struct TextOverlay: View {
    var landmark: Landmark
    
    var gradient: LinearGradient {
        .linearGradient(
            Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center
        )
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    FeatureCard(landmark: ModelData().features[0])
        .aspectRatio(3/2, contentMode: .fit)
}
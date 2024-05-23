//
//  RotateBadgeSymbol.swift
//  Landmarks
//
//  Created by João Melo on 19/05/24.
//

import SwiftUI

struct RotateBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotateBadgeSymbol(angle: Angle(degrees: 5))
}

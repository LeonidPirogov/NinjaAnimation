//
//  RotatingShurikenView.swift
//  NinjaAnimation
//
//  Created by Leonid on 17.11.2025.
//

import SwiftUI

struct RotatingShurikenView: View {
    @State private var isRotating = false
    
    var body: some View {
        ShurikenView()
            .rotationEffect(.degrees(isRotating ? 360 : 0))
            .animation(
                .linear(duration: 0.5)
                .repeatForever(autoreverses: false),
                value: isRotating
            )
            .onAppear {
                isRotating = true
            }
    }
}

#Preview {
    RotatingShurikenView()
}

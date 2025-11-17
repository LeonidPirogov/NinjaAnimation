//
//  ShurikenView.swift
//  NinjaAnimation
//
//  Created by Leonid on 17.11.2025.
//

import SwiftUI

struct ShurikenView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            let size = min(width, height)
            
            let center = CGPoint(
                x: geometry.size.width / 2,
                y: geometry.size.height / 2
            )
            
            ShurikenBladeShape()
                .fill(.black)

            ShurikenBladeShape()
                .fill(.black)
                .rotationEffect(.degrees(90))
            
            Circle()
                .fill(Color(red: 0.85, green: 0.93, blue: 1.0))
                .frame(width: size * 0.15,
                       height: size * 0.15)
                .position(center)
        }
    }
}

#Preview {
    ShurikenView()
        .frame(width: 200, height: 200)
}

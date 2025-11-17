//
//  ShurikenBladeView.swift
//  NinjaAnimation
//
//  Created by Leonid on 17.11.2025.
//

import SwiftUI

struct ShurikenBladeShape: Shape {
    func path(in rect: CGRect) -> Path {
            let center = CGPoint(x: rect.midX, y: rect.midY)
            let radius = min(rect.width, rect.height) * 0.40
            
            let left  = center.x - radius
            let right = center.x + radius
            
            var path = Path()
            path.move(to: CGPoint(x: left,  y: center.y))
            path.addLine(to: CGPoint(x: center.x, y: center.y - radius * 0.29))
            path.addLine(to: CGPoint(x: right, y: center.y))
            path.addLine(to: CGPoint(x: center.x, y: center.y + radius * 0.29))
            path.closeSubpath()
            
            return path
        }
}

#Preview {
    ShurikenBladeShape()
}

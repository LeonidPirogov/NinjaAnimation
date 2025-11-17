//
//  NinjaView.swift
//  NinjaAnimation
//
//  Created by Leonid on 16.11.2025.
//

import SwiftUI

struct NinjaView: View {
    var body: some View {
        GeometryReader { geometry in

            let width = geometry.size.width
            let height = geometry.size.height
            
            let size = min(width, height)
            let center = CGPoint(x: width / 2, y: height / 2)
            
            let radius = size * 0.40
            
            let headLeft = center.x - radius
            
            let skinColor = Color(red: 1.0, green: 0.88, blue: 0.78)
            
            Path { path in
                path.addArc(
                    center: center,
                    radius: radius,
                    startAngle: .degrees(0),
                    endAngle: .degrees(360),
                    clockwise: false
                )
            }
            .fill(.black)
            
            // lift stripe
            Path { path in
                path.move(to: CGPoint(x: headLeft, y: headLeft * 2))
                path.addLine(to: CGPoint(x: headLeft * 1.3, y: headLeft))
                path.addLine(to: CGPoint(x: headLeft * 3.5, y: headLeft * 3))
                path.addLine(to: CGPoint(x: headLeft * 2, y: headLeft * 2.6))
            }
            .fill(.black)
            
            // right stripe
            Path { path in
                path.move(to: CGPoint(x: headLeft * 2, y: headLeft * 3))
                path.addLine(to: CGPoint(x: headLeft * 2.4, y: headLeft))
                path.addLine(to: CGPoint(x: headLeft * 3, y: headLeft))
                path.addLine(to: CGPoint(x: headLeft * 2.75, y: headLeft * 2.5))
            }
            .fill(.black)
            
            Path { path in
                path.move(to: CGPoint(x: headLeft, y: center.y))
                path.addQuadCurve(
                    to: CGPoint(x: center.x * 1.8, y: center.y),
                    control: CGPoint(x: center.x, y: center.y / 2)
                )
                path.addQuadCurve(
                    to: CGPoint(x: headLeft, y: center.y),
                    control: CGPoint(x: center.x, y: center.y * 1.4)
                )
            }
            .fill(skinColor)
            
            Path { path in
                path.move(to: CGPoint(x: center.x * 0.45, y: center.y * 0.95))
                path.addQuadCurve(
                    to: CGPoint(x: center.x * 0.90, y: center.y),
                    control: CGPoint(x: center.x * 0.6, y: center.y * 0.85)
                )
                path.addQuadCurve(
                    to: CGPoint(x: center.x * 0.45, y: center.y * 0.95),
                    control: CGPoint(x: center.x * 0.55, y: center.y * 1.15)
                )
            }
            
            Path { path in
                path.move(to: CGPoint(x: center.x * 1.55, y: center.y * 0.95))
                path.addQuadCurve(
                    to: CGPoint(x: center.x * 1.10, y: center.y),
                    control: CGPoint(x: center.x * 1.40, y: center.y * 0.85)
                )
                path.addQuadCurve(
                    to: CGPoint(x: center.x * 1.55, y: center.y * 0.95),
                    control: CGPoint(x: center.x * 1.45, y: center.y * 1.15)
                )
            }
        }
    }
}

#Preview {
    NinjaView()
        .frame(width: 200, height: 200)
}

//
//  ContentView.swift
//  NinjaAnimation
//
//  Created by Leonid on 16.11.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            HStack {
                ShurikenView()
                    .frame(width: 80, height: 80)
                ShurikenView()
                    .frame(width: 80, height: 80)
                    .padding(.bottom, 50)
                ShurikenView()
                    .frame(width: 80, height: 80)
            }
                
            HStack {
                RotatingShurikenView()
                    .frame(width: 80, height: 80)
                NinjaView()
                    .frame(width: 200, height: 200)
                RotatingShurikenView()
                    .frame(width: 80, height: 80)
            }
        }
        .padding(.bottom, 100)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Color(red: 0.85, green: 0.93, blue: 1.0)
                .ignoresSafeArea())
    }
    
}

#Preview {
    ContentView()
}

//
//  InsetFactView.swift
//  FastSpace
//
//  Created by Felipe Lobo on 27/05/21.
//

import SwiftUI

struct InsetFactView: View {
    
    let planet: Planet
    
    var body: some View {
        GroupBox {
            TabView{
                ForEach(planet.fact, id: \.self) { item in
                    Text(item)
                }
            }//TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//BOX
        .groupBoxStyle(TransparentGroupBox())
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static var previews: some View {
        InsetFactView(planet: planets[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

struct TransparentGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .frame(maxWidth: .infinity)
            .padding()
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.black).opacity(0.5))
            .overlay(configuration.label.padding(.leading, 4), alignment: .topLeading)
    }
}

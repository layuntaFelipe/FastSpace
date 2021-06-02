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
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static var previews: some View {
        InsetFactView(planet: planets[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

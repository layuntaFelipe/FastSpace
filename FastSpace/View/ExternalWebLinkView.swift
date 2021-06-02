//
//  ExternalWebLinkView.swift
//  FastSpace
//
//  Created by Felipe Lobo on 27/05/21.
//

import SwiftUI

struct ExternalWebLinkView: View {
    
    let planet: Planet
    var color: String
    
    var body: some View {
        GroupBox {
            HStack {
                Text("NASA Website")
                Image(systemName: "globe")
                Spacer()
                
                Group{
                    Link(planet.name, destination: (URL(string: planet.link) ?? URL(string: "https://google.com"))!)
                        .foregroundColor(Color(color))
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(Color(color))
                }
                .foregroundColor(.accentColor)
            }//HSTACK
        }//BOX
        .groupBoxStyle(TransparentGroupBox())
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static var previews: some View {
        ExternalWebLinkView(planet: planets[0], color: "venus-shadow")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

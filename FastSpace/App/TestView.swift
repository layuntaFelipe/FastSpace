//
//  TestView.swift
//  FastSpace
//
//  Created by Felipe Lobo on 30/05/21.
//

import SwiftUI
import SceneKit

struct TestView: View {
    
    var planet: Planet
    
    var body: some View {
        VStack(alignment: .leading){
            Image(planet.image)
                .resizable()
                .scaledToFit()
                .offset(x: -120)
                .shadow(color: Color(planet.shadow).opacity(0.5), radius: 10, x: 0.0, y: 0.0)
            
            Spacer()
            
            Text(planet.name)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(.white)
            
            Text(planet.description)
                .font(.headline)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(3)
                .padding(.top)
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(planet: planets[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

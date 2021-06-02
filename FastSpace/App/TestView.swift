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
    
    @Binding var test: Bool
    
    var body: some View {
        VStack(alignment: .leading){
            Image(planet.image)
                .resizable()
                .scaledToFit()
                .offset(x: -90)
                .shadow(color: Color(planet.shadow).opacity(0.5), radius: 10, x: 0.0, y: 0.0)
                .zIndex(1)
            
            VStack(alignment: .leading){
                
                HStack {
                    Text(planet.name)
                        .font(.system(size: 40, weight: .heavy, design: .rounded))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button(action: {
                        print("HI")
                        test.toggle()
                    }, label: {
                        Image(systemName: "arrow.up.circle")
                            .resizable()
                            .scaledToFit()
                    })
                    .foregroundColor(.white)
                    .frame(width: 50, height: 50)
                    .offset(y: -70)
                    .padding(.trailing)
                        
                }
                
                Text(planet.description)
                    .font(.headline)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .lineLimit(4)
                    .padding(.top)
            }
            .zIndex(0)
            .padding(.top)
            .padding(.bottom)
            .background(
                Color.gray.opacity(0.2)
                    .clipShape(CustomShape())
                    .padding(.top,-70)
            )
        }//VSTACK
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(planet: planets[0], test: .constant(false))
            .previewLayout(.sizeThatFits)
    }
}

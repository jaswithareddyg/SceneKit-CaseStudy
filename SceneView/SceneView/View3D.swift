//
//  ContentView.swift
//  SceneView
//
//  Created by Jaswitha Reddy G on 5/18/23.
//

import SwiftUI
import SceneKit

struct View3D: View {
    @State var scene: SCNScene? = .init(named: "Bulbasaur_-_Pokemon.scn")
    
    var body: some View {
        ScrollView{
            VStack(alignment: .center) {
                Text("Bulbasaur")
                    .font(.custom("Arial", size: 60))
                    .foregroundColor(.yellow)
                    .padding()
                
                CustomSceneView(scene: $scene)
                    .frame(height: 350)
                    .padding()
            }
        }
    }
}


struct View3D_Previews: PreviewProvider {
    static var previews: some View {
        View3D()
    }
}

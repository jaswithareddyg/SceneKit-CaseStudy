//
//  CustomSceneView.swift
//  SceneView
//
//  Created by Jaswitha Reddy G on 5/8/23.
//

import SwiftUI
import SceneKit

struct CustomSceneView: UIViewRepresentable{
    
    // view to create and have additional functions for the 3D Scene View
    
    @Binding var scene: SCNScene?
    
    func makeUIView(context: Context) -> SCNView{
        let view = SCNView()
        view.allowsCameraControl = true
        view.autoenablesDefaultLighting = true
        view.antialiasingMode = .multisampling2X
        view.scene = scene
        return view
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {
        
    }
    
}

struct CustomSceneView_Previews: PreviewProvider {
    static var previews: some View {
        View3D()
    }
}

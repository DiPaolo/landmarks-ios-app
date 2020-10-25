//
//  CircleImage.swift
//  Landmarks
//
//  Created by Pavel Ditenbir on 18.10.2020.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var radius: CGFloat = 100.0
    
    var body: some View {
        image
            .resizable()
            .frame(width: radius * 2, height: radius * 2)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: landmarkData[1].image)
    }
}

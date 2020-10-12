//
//  CircleImageView.swift
//  SwiftUIMapTutorial
//
//  Created by TOUYA KAWANO on 2020/10/13.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("turtle_rock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}

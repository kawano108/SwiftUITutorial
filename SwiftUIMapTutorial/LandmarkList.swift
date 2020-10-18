//
//  LandmarkList.swift
//  SwiftUIMapTutorial
//
//  Created by TOUYA KAWANO on 2020/10/18.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandMarkDetail(landmark: landmark)) {
                    LandMarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
        ForEach(["iPhone 8", "iPhone 11"], id: \.self) {
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: $0))
                .previewDisplayName($0)
        }
    }
}

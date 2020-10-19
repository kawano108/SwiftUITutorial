//
//  LandmarkList.swift
//  SwiftUIMapTutorial
//
//  Created by TOUYA KAWANO on 2020/10/18.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        List {
            Toggle(isOn: $userData.showFavoriteOnly) {
                Text("Favorites Only")
            }
            
            ForEach(userData.landmarks) { landmark in
                if !userData.showFavoriteOnly || landmark.isFavorite {
                    NavigationLink(destination: LandMarkDetail(landmark: landmark)) {
                        LandMarkRow(landmark: landmark)
                    }
                }
            }
        }
        .navigationBarTitle(Text("Landmarks"))
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LandmarkList()
                .environmentObject(UserData())
        }
    }
}

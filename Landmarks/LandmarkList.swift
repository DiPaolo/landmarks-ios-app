//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Pavel Ditenbir on 18.10.2020.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showRated) {
                    Text("Show Rated Only")
                }

                Toggle(isOn: $userData.showUnrated) {
                    Text("Show Unrated Only")
                }
                
                ForEach(userData.landmarks) { landmark in
                    if (self.userData.showRated && landmark.rating != nil) ||
                       (self.userData.showUnrated && landmark.rating == nil) {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(UserData())
    }
}

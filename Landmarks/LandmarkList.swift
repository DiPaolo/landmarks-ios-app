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
                Toggle(isOn: $userData.showRatedOnly) {
                    Text("Rated only")
                }
                
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showRatedOnly || landmark.rating != nil {
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

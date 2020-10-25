//
//  UserData.swift
//  Landmarks
//
//  Created by Pavel Ditenbir on 24.10.2020.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var landmarks = landmarkData
    @Published var showRated = true
    @Published var showUnrated = true
}

struct UserData_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

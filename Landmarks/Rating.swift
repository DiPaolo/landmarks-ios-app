//
//  Rating.swift
//  Landmarks
//
//  Created by Pavel Ditenbir on 25.10.2020.
//

import SwiftUI

struct Rating: View {
    enum Mark: Int, CaseIterable, Comparable, Codable {
        case one = 1
        case two
        case three
        case four
        case five
        
        public static func < (a: Mark, b: Mark) -> Bool {
            return a.rawValue < b.rawValue
        }
    }
    var mark = Mark.three
    
    var body: some View {
        HStack {
            ForEach(Mark.allCases, id: \.self) {m in
                if m <= mark {
                    Image(systemName: "star.fill")
                        .imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.yellow)
                }
                else {
                    Image(systemName: "star")
                        .imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.yellow)

                }
//                Text("\(m.rawValue)")
            }
        }
    }
}

struct Rating_Previews: PreviewProvider {
    static var previews: some View {
        Rating()
    }
}

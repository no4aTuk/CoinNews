//
//  LandmarkList.swift
//  CoinNews
//
//  Created by itsmuffintime on 29.10.2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        List(landmarkData, id: \.id) { (element) -> LandmarkRow in
//            LandmarkRow(landmark: element)
//        }
        NavigationView {
            List(landmarkData) { element in
                NavigationLink(destination: LandmarkDetail(landmark: element)) {
                    LandmarkRow(landmark: element)
                }
            }
        }
        .navigationBarTitle("Landmarks")
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        //LandmarkList()
        ForEach(["iPhone 8", "iPhone 11"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

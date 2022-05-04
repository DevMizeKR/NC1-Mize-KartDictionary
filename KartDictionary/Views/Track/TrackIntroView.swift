//
//  TrackIntroView.swift
//  KartDictionary
//
//  Created by HWANG-C-K on 2022/05/03.
//

import SwiftUI

struct TrackIntroView: View {
    var trackData: Track
    var body: some View {
        VStack{
            Image(trackData.imageName)
        }
        .navigationBarTitle(trackData.name)
    }
}

struct TrackIntroView_Previews: PreviewProvider {
    static var previews: some View {
        TrackIntroView(trackData: tracks[31])
    }
}

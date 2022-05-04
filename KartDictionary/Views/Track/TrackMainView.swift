//
//  TrackMainView.swift
//  KartDictionary
//
//  Created by HWANG-C-K on 2022/04/29.
//

import SwiftUI

struct TrackMainView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 4)) {
                ForEach(tracks.filter({$0.type == "logo"}), id:\.id){track in
                    NavigationLink(destination: TrackDetailView(themename: track.name),
                                   label: {Image(track.imageName)
                            .resizable()
                            .frame(width: 80, height: 80)})
                }
            }
            .padding()
        }
    }
}

struct TrackMainView_Previews: PreviewProvider {
    static var previews: some View {
        TrackMainView()
    }
}

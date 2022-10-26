//
//  DetailedTutorials.swift
//  innofest app
//
//  Created by NICOLE TAN YITONG stu on 26/10/22.
//

import SwiftUI

struct DetailedTutorials: View {
    @State var app: AppInfo
    
    var body: some View {
        List() {
            ForEach(app.tutorialVideos) { video in
                Link(destination: URL(string: video.link)!, label: {
                    
                    HStack {
                                  Image(systemName: video.icon)
                                      .font(.system(size: 20))
                                      .foregroundColor(Color.yellow)
                                  Text(video.description)
                                      .font(.system(size: 30))
                                      .padding()
                                      .foregroundColor(Color.yellow)
                              }
                    
                })
            }
        }
        .navigationTitle("Tutorials")
    }
}
//
//struct DetailedTutorials_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailedTutorials(app: <#App#>)
//    }
//}

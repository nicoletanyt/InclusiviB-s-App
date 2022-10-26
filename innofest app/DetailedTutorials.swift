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
                    Text(video.description)
                })
            }
        }
    }
}
//
//struct DetailedTutorials_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailedTutorials(app: <#App#>)
//    }
//}

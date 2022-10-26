//
//  App.swift
//  innofest app
//
//  Created by NICOLE TAN YITONG stu on 26/10/22.
//

import Foundation

struct AppInfo: Identifiable {
    var id = UUID()
    var name: String
    var URLScheme: String
    var imageURL: String
    var tutorialVideos: [videoInfo]
}

struct videoInfo: Identifiable {
    var id = UUID()
    var link: String
    var description: String
    var icon: String
}

var availableApps = [
    AppInfo(name: "Whatsapp", URLScheme: "whatsapp://", imageURL: "WHATSAPP", tutorialVideos:
                [videoInfo(link: "https://www.youtube.com/watch?v=mgoOp919mdM",
                description: "Creating a group chat.",
                icon: "bubble.left.and.bubble.right.fill"),
                 videoInfo(link: "https://www.youtube.com/watch?v=fCP6LMs4bZA",
                description: "Admin Controls In Chat.",
                icon: "person.3.sequence.fill")]
           ),
    AppInfo(name: "Instagram", URLScheme: "whatsapp://", imageURL: "INSTAGRAM", tutorialVideos:
                [videoInfo(link: "https://docs.google.com/spreadsheets/d/1PlDHi4hCk2SqqW0wRfyNhTNnOf5R7bj699TFkW-NSBo/edit#gid=1272110813", description: "Creating A Post.", icon: "")]
           )]

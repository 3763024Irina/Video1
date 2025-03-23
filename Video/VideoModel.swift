//
//  VideoModel.swift
//  Video
//
//  Created by Irina on 22/3/25.
//

import Foundation


struct Video {
    let title: String
    let thumbnail: String
    let url: String
}

let videos: [Video] = [
    Video(title: "Aladdin",
          thumbnail: "v1",
          url: "https://ia802609.us.archive.org/23/items/Aladdin_315/Aladdin_512kb.mp4"),
    
    Video(title: "Avez Vous",
          thumbnail: "v2",
          url: "https://ia800604.us.archive.org/19/items/Avez-vousDjVu...LePlusPetitZooDuMonde/104_Le_Plus_Petit_Zoo_du_Monde.mp4"),
    
    Video(title: "The Kings Trumpet",
          thumbnail: "v3",
          url: "https://ia800705.us.archive.org/28/items/TheSpiritOf43_56/The_Spirit_of__43_512kb.mp4"),
    
    Video(title: "Popeye the Sailor Meets Aladdin",
          thumbnail: "v4",
          url: "https://ia800703.us.archive.org/30/items/Popeye_the_Sailor_Meets_Aladdin_and_His_Wonderful_Lamp/Popeye_-_Aladdin_and_His_Wonderful_Lamp_512kb.mp4")
]

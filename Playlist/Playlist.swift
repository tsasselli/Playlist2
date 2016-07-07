//
//  Playlist.swift
//  Playlist
//
//  Created by Travis Sasselli on 7/7/16.
//  Copyright © 2016 devMountain. All rights reserved.
//

import Foundation

class Playlist: Equatable {

    let title: String
    var songArray: [Song]

    init(title: String, songs: [Song] = []) {
        
        self.title = title
        self.songArray = songs
    }
}

func ==(lhs: Playlist, rhs: Playlist) -> Bool {
    return lhs.title == rhs.title && lhs.songArray == rhs.songArray
    
}
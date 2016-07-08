//
//  Playlist.swift
//  Playlist
//
//  Created by Travis Sasselli on 7/7/16.
//  Copyright © 2016 devMountain. All rights reserved.
//

import Foundation

class Playlist: Equatable {

    private let kPlaylistTitle = "playlistTitleKey"
    private let kSongs = "songsKey"
    
    
    let title: String
    var songArray: [Song]
    
    var playlistDictionary: [String: AnyObject] {
        return [kPlaylistTitle: title, kSongs: songArray.map{ $0.dictionaryCopy}] //String: AnyObject]]
        
    
    }
    
    
    

    init(title: String, songs: [Song] = []) {
        
        self.title = title
        self.songArray = songs
    }
    
    init? (dictionary: [String: AnyObject]) {
        guard let title = dictionary[kPlaylistTitle] as? String,
        songsDictionaryArray = dictionary[kSongs] as? [[String:AnyObject]]
            else { return nil
        }
        self.title = title
        self.songArray = songsDictionaryArray.flatMap{ Song (dictionary: $0) }
    
    }
    
    
    
}

func ==(lhs: Playlist, rhs: Playlist) -> Bool {
    return lhs.title == rhs.title && lhs.songArray == rhs.songArray
    
}
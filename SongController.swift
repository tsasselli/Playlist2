//
//  SongController.swift
//  Playlist
//
//  Created by Travis Sasselli on 7/7/16.
//  Copyright © 2016 devMountain. All rights reserved.
//

import Foundation


class SongController {

  static  func createSong (name:String, artist: String, playlist: Playlist)  {
        let song = Song(title: name, artist: artist)
        PlaylistController.sharedController.addSongToPlaylist(song, playlist: playlist)
        
    
    
    }

}
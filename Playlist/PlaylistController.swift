//
//  PlaylistController.swift
//  Playlist
//
//  Created by Travis Sasselli on 7/7/16.
//  Copyright © 2016 devMountain. All rights reserved.
//

import Foundation

class PlaylistController {
    
    var playlists: [Playlist] = []
    
    
    
    
    //CRUD    create read update delete

    func addPlaylist (name: String) {
        let playlist = Playlist(title:  name)
        playlists.append(playlist)
        
    }
    
    func deletePlaylist(playlist: Playlist) {
        
        if let index = playlists.indexOf(playlist) {
        playlists.removeAtIndex(<#T##index: Int##Int#>)
        
        //playlists.removeAtIndex(
        }
    }
}
//
//  PlaylistController.swift
//  Playlist
//
//  Created by Travis Sasselli on 7/7/16.
//  Copyright © 2016 devMountain. All rights reserved.
//

import Foundation

class PlaylistController {
    
   
    static let sharedController = PlaylistController ()
    
    
    
    var playlists: [Playlist] = []
    
    
    
    
    //CRUD    create read update delete

    func addPlaylist (name: String) {
        let playlist = Playlist(title:  name)
        playlists.append(playlist)
        
    }
    
    func deletePlaylist(playlist: Playlist) {
        
        if let index = playlists.indexOf(playlist) {
        playlists.removeAtIndex(index)
        
        //playlists.removeAtIndex(
        }
    }
    
    
    func addSongToPlaylist (song: Song, playlist: Playlist) {
        playlist.songArray.append(song)
        
    
    
    }
    
    
    func removeSongFromPlaylist(song: Song, playlist: Playlist) {
        guard let index = playlist.songArray.indexOf(song) else {return}
    
         playlist.songArray.removeAtIndex(index)
    }
    }
    

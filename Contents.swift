//: Playground - noun: a place where people can play

import UIKit


class MediaItem
{
    var title: String
    var inCollection: Bool
    var playingTime: Int
    var copyYear: Int
    
    
    init(title: String, inCollection: Bool, playingTime: Int, copyYear: Int)
    {
        self.title = title
        self.inCollection = inCollection
        self.playingTime = playingTime
        self.copyYear = copyYear
    }
    
    func getTitle() -> String
    {
        return title
    }
    
    func getCopyYear() -> Int
    {
        return copyYear
    }
    
  

    func getCollectionStatus() -> Bool
    {
    
        return inCollection
        
    }

    func getPlayingTime() -> Int
    {
        return playingTime
    }

    
    
}






class CD : MediaItem
{
    var artist: String
    var tracks: Int
    
    
    init(artist: String, tracks: Int, title: String, inCollection: Bool, playingTime: Int, copyYear: Int)
    {
        self.artist = artist
        self.tracks = tracks
        super.init(title: title, inCollection: inCollection, playingTime: playingTime, copyYear: copyYear)
    }
    
    func getArtist() -> String
    {
        return artist
    }
    
    func getTracks() -> Int
    {
        return tracks
    }
    

    
   let newCD = MediaItem(title: "New DVD", inCollection: true, playingTime: 45, copyYear: 2017)
}






class DVD : MediaItem
{
    var rating: String
    var bonusTime: Int
    
    init(rating: String, bonusTime: Int, title: String, inCollection: Bool, playingTime: Int, copyYear: Int)
    {
        self.rating = rating
        self.bonusTime = bonusTime
         super.init(title: title, inCollection: inCollection, playingTime: playingTime, copyYear: copyYear)
    }
    
    func getRating() -> String
    {
        return rating
    }
    
    func getBonusTime() -> Int
    {
        return bonusTime
    }

    override func getPlayingTime() -> Int
    {
        let totalTime = playingTime + bonusTime
        return totalTime
    }
    
    let newDVD = MediaItem(title: "New DVD", inCollection: true, playingTime: 120, copyYear: 2014)
    
}







class AudioBook : MediaItem
{
    var author: String
    var narrator: String
    
    init(author: String, narrator: String, title: String, inCollection: Bool, playingTime: Int, copyYear: Int)
    {
        self.author = author
        self.narrator = narrator
         super.init(title: title, inCollection: inCollection, playingTime: playingTime, copyYear: copyYear)
    }
    
    
    
    func getAuth() -> String
    {
        return author
    }

    
    func getNarrator() -> String
    {
        return narrator
    }


    
   let newAudioBook = MediaItem(title: "New Audio Book", inCollection: false, playingTime: 360, copyYear: 1995)
    
}


class Program: MediaItem
{
    let Main = [
        CD(artist: "Drake", tracks: 12, title: "From Time", inCollection: true, playingTime: 48, copyYear: 2017),
        CD(artist: "Blake Shelton", tracks: 15, title: "If I'm Honest", inCollection: true, playingTime: 60, copyYear: 2016),
        DVD(rating: "PG", bonusTime: 20, title: "Paul Blart: Mall Cop", inCollection: true, playingTime: 120, copyYear: 2014),
        DVD(rating: "PG", bonusTime: 25, title: "Paul Blart: Mall Cop 2", inCollection: true, playingTime: 120, copyYear: 2016),
        AudioBook(author: "Zadie Smith", narrator: "Morgan Freeman", title: "White Teeth", inCollection: true, playingTime: 240, copyYear: 2016),
        AudioBook(author: "Laurant Binet", narrator: "Stephen Hawking", title: "HHhH", inCollection: true, playingTime: 180, copyYear: 2014)
    ]
    
    override func getCollectionStatus() -> Bool {
        
        return inCollection
        
    }
   
    
    

     //How to get each individual item
    /*
     print(CD.inCollection)
     print(DVD.inCollection)
     print(AudioBook.inCollection)
    */
 
 

    
}


print("hi")

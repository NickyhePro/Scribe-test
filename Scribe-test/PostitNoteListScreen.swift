//
//  PostitNoteListScreen.swift
//  Scribe-test
//
//  Created by Nick He on 15/01/19.
//  Copyright © 2019 Nick He. All rights reserved.
//

import UIKit

class PostitNoteListScreen: UIViewController {
   
    var notes : [PostitNote] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadNotes()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func loadNotes() {
        
        var notes : [PostitNote] = []
        
        let note1 = PostitNote(image: #imageLiteral(resourceName: "note1"), text: "Answer Emails")
        let note2 = PostitNote(image: #imageLiteral(resourceName: "note2"), text: "Pack Lunch For School")
        let note3 = PostitNote(image: #imageLiteral(resourceName: "note3"), text: "Bring Extra Clothes")
        let note4 = PostitNote(image: #imageLiteral(resourceName: "note4"), text: "Diannes Birthday")
        let note5 = PostitNote(image: #imageLiteral(resourceName: "note5"), text: "Groceries")
        let note6 = PostitNote(image: #imageLiteral(resourceName: "note06 "), text: "Pay For Cabin")
        let note7 = PostitNote(image: #imageLiteral(resourceName: "note10 "), text: "Pick Up Shirts")
        let note8 = PostitNote(image: #imageLiteral(resourceName: "note07 "), text: "Farmers Market")
        let note9 = PostitNote(image: #imageLiteral(resourceName: "note09 "), text: "New Connections?")
        let note10 = PostitNote(image: #imageLiteral(resourceName: "note08 "), text: "Order New Post-it Notes")
        
        notes.append(note1)
        notes.append(note2)
        notes.append(note3)
        notes.append(note4)
        notes.append(note5)
        notes.append(note6)
        notes.append(note7)
        notes.append(note8)
        notes.append(note9)
        notes.append(note10)
        
        self.notes = notes
    }

}

extension PostitNoteListScreen: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let note = notes[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCell") as! NoteCell
        
        cell.setImage(image: note.image!)
        cell.setText(text: note.text!)
        
        return cell
    }
}

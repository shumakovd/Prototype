//
//  PrototypeVC.swift
//  Prototype
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import UIKit
import Foundation

class PrototypeVC: UIViewController {
    
    // MARK: - IBOutlets        
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testPrototype_NSCopying()
        testPrototypeFromExample()
    }
    
    // MARK: - Methods
    
    func testPrototype_NSCopying() {
        Client.someClientCode()
    }
    
    func testPrototypeFromExample() {
        
        let author = Author(id: 10, username: "user_99")
        let page = Page(title: "My First Page", contents: "Hello world!", author: author)
        
        page.add(comment: Comment(message: "Keep it up!"))
        
        /// Since NSCopying returns Any, the copied object should be unwrapped.
        guard let anotherPage = page.copy() as? Page else {
            print("Page was not copied")
            return
        }
        
        /// Comments should be empty as it is a new page.
        assert(anotherPage.comments.isEmpty, "Comments should be empty as it is a new page.")
        
        /// Note that the author is now referencing two objects.
        assert(author.pagesCount == 2, "Note that the author is now referencing two objects.")
        
        print("Original title: " + page.title)
        print("Copied title: " + anotherPage.title)
        print("Count of pages: " + String(author.pagesCount))
    }
    
}

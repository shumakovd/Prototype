//
//  Author.swift
//  Prototype
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import UIKit
import Foundation

class Author {

    private var id: Int
    private var username: String
    private var pages = [Page]()

    init(id: Int, username: String) {
        self.id = id
        self.username = username
    }

    func add(page: Page) {
        pages.append(page)
    }

    var pagesCount: Int {
        return pages.count
    }
}

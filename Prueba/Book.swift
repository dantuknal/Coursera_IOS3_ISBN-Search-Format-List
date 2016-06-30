//
//  Book.swift
//  Prueba
//
//  Created by Diseño01 on 10/06/16.
//  Copyright © 2016 DanTuknal. All rights reserved.
//

import UIKit


let tituloVacio = "{ No se encontró titulo para este libro }"
let autoresVacio = "{No se encontraron autores para este libro}"

struct Book {
    let isbn : String
    let titulo : String
    let autores : String
    let cover : UIImage
    
    init(isbn: String, titulo: String, autores: String, cover: UIImage) {
        self.isbn = isbn
        self.titulo = titulo
        self.autores = autores
        self.cover = cover
    }
}

class BookStore {
    class var sharedInstance: BookStore {
        struct Static {
            static let instance = BookStore()
        }
        return Static.instance
    }
    
    var books: [Book] = []
    
    var count: Int {
        return books.count
    }
    
    func add(book: Book) {
        books.append(book)
    }
    
    func replace(book: Book, atIndex index: Int) {
        books[index] = book
    }
    
    func get(index: Int) -> Book {
        return books[index]
    }
    
    func removeTaskAtIndex(index: Int) {
        books.removeAtIndex(index)
    }
}
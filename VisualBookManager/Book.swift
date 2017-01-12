//
//  Book.swift
//  BookManager
//
//  Created by HanYoungsoo on 2016. 12. 18..
//  Copyright © 2016년 HanYoungsoo. All rights reserved.
//

import Foundation

class Book{
    var name = ""
    var genre = ""
    var autor = ""
    
    func bookPrint(){
        print("Name : \(name)")
        print("genre : \(genre)")
        print("autor : \(autor)")
    }
}

//
//  main.swift
//  BookManager
//
//  Created by HanYoungsoo on 2016. 12. 18..
//  Copyright © 2016년 HanYoungsoo. All rights reserved.
//

import Foundation

var book1 = Book()
book1.name = "햄릿"
book1.genre = "소설"
book1.autor = "셰잌스피어"

//book1.bookPrint()

var book2 = Book()
book2.name = "누구를 위하여 종을 울리나"
book2.genre = "전쟁소설"
book2.autor = "헤밍웨이"

//book2.bookPrint()

var book3 = Book()
book3.name = "죄와벌"
book3.genre = "사실주의"
book3.autor = "톨스토이"

//book3.bookPrint()

var myBook = BookManager()
myBook.addBook(bookObject: book1)
myBook.addBook(bookObject: book2)
myBook.addBook(bookObject: book3)

myBook.showAllBook()
myBook.countBook()
var findResult = myBook.findBook("누구를 위하여 종을 울리나")

if(findResult != nil){
    print(findResult!+"를 찾았습니다.")
}
else{
    print("책을 찾지 못했습니다.")
}


myBook.removeBook("죄와벌")
myBook.showAllBook()
myBook.removeBook("죄와벌2")

//
//  BookManager.swift
//  BookManager
//
//  Created by HanYoungsoo on 2016. 12. 19..
//  Copyright © 2016년 HanYoungsoo. All rights reserved.
//

import Foundation

class BookManager{
    var bookList = [Book]() // mutable array
    
    func addBook(bookObject: Book){
        bookList += [bookObject]
    }
    
    func showAllBook() {
        var str=""
        for index in bookList{
            str += "제목 : "+index.name+"\n"
            str += "저자 : "+index.autor+"\n"
            str += "장르 : "+index.genre+"\n"
            str += "--------------------"+"\n"
            
        }
        print(str)
    
    }
    
    func countBook(){
        print(bookList.count)
    }
        
    func findBook(_ name:String)->String?{
        
        var strTemp=""
        for bookTemp in bookList{
            if( bookTemp.name == name ){
                strTemp += bookTemp.name+"\n"
                strTemp += bookTemp.autor+"\n"
                strTemp += bookTemp.genre
                return strTemp
            }
    
        }
        
        return nil
            
    }
    
    func removeBook(_ name:String){
        var togle=false
        for bookTemp in bookList{
            if(bookTemp.name==name){
                let index = (bookList as NSArray).index(of: bookTemp)
                bookList.remove(at: index)
                print("\(bookTemp.name)을 삭제 했습니다")
                togle=true
            }
        }
        if(togle==false){
            print("지우려는 책이 없습니다!")
        }
    
    }
}

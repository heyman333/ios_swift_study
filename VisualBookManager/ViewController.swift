//
//  ViewController.swift
//  VisualBookManager
//
//  Created by HanYoungsoo on 2016. 12. 21..
//  Copyright © 2016년 HanYoungsoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mybook = BookManager()
    @IBOutlet var outputTextView:UITextView!
    
    @IBOutlet var nameTextField:UITextField!
    @IBOutlet var genreTextField:UITextField!
    @IBOutlet var autorTextField:UITextField!
    @IBOutlet var countLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let book1 = Book()
        book1.name = "햄릿"
        book1.genre = "소설"
        book1.autor = "셰잌스피어"
        
        //book1.bookPrint()
        
        let book2 = Book()
        book2.name = "누구를 위하여 종을 울리나"
        book2.genre = "전쟁소설"
        book2.autor = "헤밍웨이"
        
        //book2.bookPrint()
        
        let book3 = Book()
        book3.name = "죄와벌"
        book3.genre = "사실주의"
        book3.autor = "톨스토이"
        
        //book3.bookPrint()
        
        
        mybook.addBook(bookObject: book1)
        mybook.addBook(bookObject: book2)
        mybook.addBook(bookObject: book3)
        
        countLabel.text = "\(mybook.countBook())권"
        

    }
    
    @IBAction func showAllBookAction(_ sender:AnyObject){
        outputTextView.text=mybook.showAllBook()
    }
    
    @IBAction func addBookAction(_ sender:AnyObject){
        let bookTemp = Book()
        bookTemp.name=nameTextField.text!
        bookTemp.genre=genreTextField.text!
        bookTemp.autor=autorTextField.text!
        mybook.addBook(bookObject: bookTemp)
        
        outputTextView.text="\(bookTemp.name)이 등록되었습니다"
        countLabel.text = "\(mybook.countBook())권"
        
    }
    @IBAction func findBookAction(_ sender:AnyObject){
        let findResult=mybook.findBook(nameTextField.text!)
        if findResult != nil{
            outputTextView.text=findResult!+"를(을)찾았습니다"
        }
        else{
            outputTextView.text="찾으려는 책이 없습니다!"
        }
        
    }
    @IBAction func removeBookAction(_ sender:AnyObject){
        let delBook=mybook.removeBook(nameTextField.text!)
        
        if delBook == true{
            outputTextView.text="\(nameTextField.text!)을(를) 지웠습니다"
            countLabel.text = "\(mybook.countBook())권"
        }
        else{
            outputTextView.text="지우려는 책이 없네요"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


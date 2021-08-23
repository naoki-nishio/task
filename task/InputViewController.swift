//
//  InputViewController.swift
//  task
//
//  Created by 中西八洋 on 2021/08/23.
//

import UIKit
import RealmSwift



class InputViewController: UIViewController {

    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var contentsTextField: UITextView!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var categoryTextField: UITextField!
    
    let realm = try! Realm()
    var task: Task!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    

    
    
    
    
    
 

        // 背景をタップしたらdismissKeyboardメソッドを呼ぶように設定する
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target:self, action:#selector(dismissKeyboard))
        self.view.addGestureRecognizer(tapGesture)

        titleTextField.text = task.title
        contentsTextField.text = task.contents
        datePicker.date = task.date
        categoryTextField.text = task.category
}

    @objc func dismissKeyboard(){
        // キーボードを閉じる
        view.endEditing(true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
          try! realm.write {
              self.task.title = self.titleTextField.text!
              self.task.contents = self.contentsTextField.text
              self.task.date = self.datePicker.date
            self.task.category = self.categoryTextField.text!
              self.realm.add(self.task, update: .modified)
          }

          super.viewWillDisappear(animated)
      }
    
    
    
    
    
}

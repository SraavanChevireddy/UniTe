//
//  ViewController.swift
//  HealthApp
//
//  Created by Sraavan Chevireddy on 6/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var capsuleView: LabelView!
    
    @IBOutlet weak var tf_firstName: UITextField!
    @IBOutlet weak var tf_lastName: UITextField!
    @IBOutlet weak var tf_DateOfBirth: UITextField!
    @IBOutlet weak var tf_ssn: UITextField!
    
    @IBOutlet weak var btn_next: UIButton!
    
    @IBOutlet weak var barButton_next: UIBarButtonItem!
    @IBOutlet weak var barButton_cancel: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadUIComponents()
    }
    
    private func loadUIComponents(){
        navigationItem.title = "Register"
        capsuleView.title.text = "Type your name as it happens on your insurance card"
        barButton_cancel.action = #selector(clearAction)
        barButton_next.action = #selector(action_Submit)
    }
    
    @objc func clearAction(){
        let alert = UIAlertController(title: "Are you sure you want to clear fileds ?", message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "Dismiss", style: .destructive) { [weak self] _ in
            if let self = self{
                self.clearFields { _ in
                    print("Fileds cleared successfully")
                }
            }
        }
        let action_cancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        [action, action_cancel].forEach({alert.addAction($0)})
        self.present(alert, animated: true, completion: nil)
    }
    
    func clearFields(completion: @escaping((Bool)->Void)){
        [self.tf_firstName, self.tf_lastName, self.tf_DateOfBirth, self.tf_ssn].forEach({$0?.text = nil})
        completion(true)
    }
    
    @objc func action_Submit(){
        let alert = UIAlertController(title: "Form Sumbitted Successfully", message: nil, preferredStyle: .alert)
        
        let action_cancel = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
        [action_cancel].forEach({alert.addAction($0)})
        self.present(alert, animated: true, completion: nil)
    }


}


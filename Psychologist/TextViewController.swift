//
//  TextViewController.swift
//  Psychologist
//
//  Created by Ingenieria y Software on 21/10/15.
//  Copyright © 2015 Ingenieria y Software. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {
    @IBOutlet var textView: UITextView!{
        didSet{
            textView.text = text
        }
    }
    var text:String = ""
        {
        didSet{
            textView?.text = text
        }
    }
    override var preferredContentSize: CGSize {
        get{
            if textView != nil && presentingViewController != nil {
                return textView.sizeThatFits((presentingViewController?.view.bounds.size)!)
            }
            else{
                return super.preferredContentSize
            }
        }
        set{super.preferredContentSize = newValue}
    }
}

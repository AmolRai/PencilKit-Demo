//
//  ViewController.swift
//  PencilKit Demo
//
//  Created by Amol Rai on 29/11/19.
//  Copyright © 2019 Amol Rai. All rights reserved.
//

import UIKit
import PencilKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setUpPencilKit()
    }
    
    func setUpPencilKit() {
        let canvasView = PKCanvasView(frame: self.view.bounds)
        guard let window = view.window, let toolPicker = PKToolPicker.shared(for: window)
            else { return }
        toolPicker.setVisible(true, forFirstResponder: canvasView)
        toolPicker.addObserver(canvasView)
        canvasView.becomeFirstResponder()
        view.addSubview(canvasView)
    }
}

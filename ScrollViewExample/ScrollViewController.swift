//
//  ViewController.swift
//  ScrollViewExample
//
//  Created by Jair Moreno Gaspar on 12/16/19.
//  Copyright © 2019 Jair Moreno Gaspar. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .lightGray
        return scrollView
    }()
    
    let containerView: UIView = {
           let view = UIView()
           view.translatesAutoresizingMaskIntoConstraints = false
           view.backgroundColor = .white
           return view
       }()
    
    let redButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .red
        return btn
    }()
    
    let stackContainer: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let blueLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.heightAnchor.constraint(equalToConstant: 900).isActive = true
        lbl.backgroundColor = .blue
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addScrollView()
        addContainerView()
        addRedButton()
        addStackView()
    }

    private func addScrollView() {
        view.addSubview(scrollView)
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    private func addContainerView() {
        scrollView.addSubview(containerView)
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        containerView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        
    }
    
    private func addRedButton() {
        containerView.addSubview(redButton)
        redButton.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        redButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        redButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        redButton.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
    }
    
    private func addStackView() {
        containerView.addSubview(stackContainer)
        stackContainer.topAnchor.constraint(equalTo: redButton.bottomAnchor, constant: 50).isActive = true
        stackContainer.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 50).isActive = true
        stackContainer.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -50).isActive = true
        stackContainer.addArrangedSubview(blueLabel)
        
        // IMPORTANT: 🚨 🚨
        scrollView.bottomAnchor.constraint(equalTo: stackContainer.bottomAnchor).isActive = true
        
    }

}


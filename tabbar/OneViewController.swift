//
//  OneViewController.swift
//  tabbar
//
//  Created by Admin on 28/04/24.
//

import UIKit

class OneViewController: UIViewController {

    let button = UIButton()
    
    lazy var  icon: UIImageView = {
        let icon = UIImageView()
        //icon.frame = CGRect(x: 140, y: 170, width: 150, height: 150)
        //icon.image = UIImage(systemName: "person")
        icon.image = UIImage(named: "Image")
        return icon
    }()
    
    lazy var  label: UILabel = {
        let label = UILabel()
        label.text = Const.Text.heading
        label.font = .systemFont(ofSize: 24)
        label.layer.cornerRadius = 20
        label.backgroundColor = .white
        label.textAlignment = .center
        label.numberOfLines = 8
        return label
    }()
    
    lazy var  label2: UILabel = {
        let label = UILabel()
        label.text = Const.Text.heading2
        label.font = .systemFont(ofSize: 24)
        label.backgroundColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    lazy var  label3: UILabel = {
        let label = UILabel()
        label.text = Const.Text.heading3
        label.font = .systemFont(ofSize: 24)
        label.backgroundColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        //navigationItem.title = "home"
        //view.addSubview(button)
        view.addSubview(label)
        view.addSubview(icon)
        //navigationItem.title = "Start"
        //title = "Start"

        setupViews()
        setupConstrains()
    }
    

    
    private func setupViews()  {
        
        //title = "Start"
        //view.backgroundColor = .white
        
        //navigationItem.backBarButtonItem = UIBarButtonItem(title: "Custom", style: .plain, target: nil, action: nil)
        
        button.setTitle("OneButton", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 20
        
        button.addAction(UIAction(handler: { [weak self] _ in
            
            // self?.navigationController.pushViewController(ViewController(),
            //self?.navigationController?.pushViewController( AlertViewController(), animated: true)
            let alert = self?.createAlert() ?? UIAlertController()
            self?.present(
                alert,
                animated: true,
                completion: nil
            )
            
        }), for: .touchUpInside)
        
        view.addSubview(button)
        
    }
    
    
    func createAlert() -> UIAlertController {
        let alert = UIAlertController(
            title: "Warning! This is the last screen.",
            message: "Do you want to close it?",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

        return alert
    }
    
    private func setupConstrains() {
            //view.addSubview(buttonOne)
            button.translatesAutoresizingMaskIntoConstraints = false
        
        icon.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
    
    
            NSLayoutConstraint.activate([
                button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                button.heightAnchor.constraint(equalToConstant: 80),
                button.widthAnchor.constraint(equalToConstant: 300)
            ])
        
        NSLayoutConstraint.activate([
            icon.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            icon.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            icon.widthAnchor.constraint(equalToConstant: 350),
            icon.heightAnchor.constraint(equalToConstant: 350)
            

        ])
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 480),
//            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            //icon.widthAnchor.constraint(equalToConstant: 350),
            //label.heightAnchor.constraint(equalToConstant: 50)
            

        ])
        

//        NSLayoutConstraint.activate([
//            label2.topAnchor.constraint(equalTo: view.topAnchor, constant: 500)
//        ])
        
        
        }
}

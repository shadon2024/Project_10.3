//
//  ViewController.swift
//  tabbar
//
//  Created by Admin on 28/04/24.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tabBar.backgroundColor = .white
        
        let one = OneViewController()
        //one.view.backgroundColor = .red
        one.tabBarItem.image = UIImage(systemName: "phone")
        one.navigationItem.title = "home"
        one.tabBarItem.title = "Call"
        
        let two = TwoViewController()
        //two.view.backgroundColor = .blue
        two.tabBarItem.image = UIImage(systemName: "star")
        two.tabBarItem.title = "Status"
        
        let three = ThreeViewController()
        //three.view.backgroundColor = .green
        three.tabBarItem.image = UIImage(systemName: "person")
        three.tabBarItem.title = "Person"
        
        let four = FourViewController()
        four.tabBarItem.image = UIImage(systemName: "gear")
        four.tabBarItem.title = "Setting"
        
        self.viewControllers = [one, two, three, four]
    }


}



extension ViewController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
            // Определяйте ваши собственные условия и добавляйте анимацию в соответствии с ними
            UIView.transition(with: tabBarController.view, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
            return true
        }
}



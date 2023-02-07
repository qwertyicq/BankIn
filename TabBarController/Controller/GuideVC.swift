//
//  GuideVC.swift
//  TabBarController
//
//  Created by Nikolay T on 07.02.2023.
//

import UIKit

class GuideVC: UIViewController {

    var roundView: UIView = {
        let out = UIView()
        out.backgroundColor = .systemOrange
        out.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        out.layer.cornerRadius = out.frame.height / 2
        out.translatesAutoresizingMaskIntoConstraints = false
        return out
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setLayout()
        self.setConstraint()
    }

    private func setLayout() {
        self.view.addSubview(roundView)
    }

    private func setConstraint() {
        NSLayoutConstraint.activate([
            self.roundView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10),
            self.roundView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            self.roundView.widthAnchor.constraint(equalToConstant: 30),
            self.roundView.heightAnchor.constraint(equalToConstant: 30)])
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

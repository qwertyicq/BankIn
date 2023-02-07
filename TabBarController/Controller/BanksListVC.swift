//
//  BanksListVC.swift
//  TabBarController
//
//  Created by Nikolay T on 06.02.2023.
//

import UIKit

class BanksListVC: UIViewController {

    var bankList: UITableView = {
        let table = UITableView()
        table.register(UINib(nibName: "BankCell", bundle: nil), forCellReuseIdentifier: "CellForBank")
        table.translatesAutoresizingMaskIntoConstraints = false

        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        bankList.delegate = self
        bankList.dataSource = self

        self.setLayout()
        self.setConstraint()
    }

    private func setLayout() {
        self.view?.addSubview(bankList)
    }

    private func setConstraint() {
        NSLayoutConstraint.activate([
            self.bankList.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 30),
            self.bankList.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            self.bankList.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            self.bankList.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -30)])
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

extension BanksListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CellForBank") as? BankCell else {
            return UITableViewCell()
        }

        cell.bankNameLable.text = "Tinkoff"
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }

}

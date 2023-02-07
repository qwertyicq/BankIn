//
//  GuidesVC.swift
//  TabBarController
//
//  Created by Nikolay T on 07.02.2023.
//

import UIKit

class GuidesListVC: UIViewController {

    var countryList: UITableView = {
        let table = UITableView()
        table.register(UINib(nibName: "CountryCell", bundle: nil), forCellReuseIdentifier: "CellForCountry")
        table.translatesAutoresizingMaskIntoConstraints = false

        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        countryList.delegate = self
        countryList.dataSource = self

        self.setLayout()
        self.setConstraint()
    }

    private func setLayout() {
        self.view?.addSubview(countryList)
    }

    private func setConstraint() {
        NSLayoutConstraint.activate([
            self.countryList.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 30),
            self.countryList.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            self.countryList.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            self.countryList.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -30)])
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

extension GuidesListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CellForCountry") as? CountryCell else {
            return UITableViewCell()
        }

        cell.nameLabel.text = "RU"
        cell.countryImage.image = UIImage(named: "SA")
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let guideViewController = storyboard?.instantiateViewController(withIdentifier: "GuideVCStory") as? GuideVC else { return }

        navigationController?.pushViewController(guideViewController, animated: true)

        tableView.deselectRow(at: indexPath, animated: true)
    }
}

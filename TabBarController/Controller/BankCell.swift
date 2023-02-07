//
//  BankCell.swift
//  TabBarController
//
//  Created by Nikolay T on 07.02.2023.
//

import UIKit

class BankCell: UITableViewCell {
    var backView: UIView = {
        let out = UIView()
        out.backgroundColor = .systemGreen
        out.layer.cornerRadius = 10
        out.translatesAutoresizingMaskIntoConstraints = false
        return out
    }()

    var bankNameLable: UILabel = {
        let out = UILabel()
        out.translatesAutoresizingMaskIntoConstraints = false
        return out
    }()

    var favouriteBtn: UIButton = {
        let out = UIButton()
        out.addTarget(self, action: #selector(favouriteBtnTouchUpInside), for: .touchUpInside)
        out.setImage(UIImage(systemName: "star"), for: .normal)
        out.translatesAutoresizingMaskIntoConstraints = false
        return out
    }()

    var cardsCollection: UICollectionView = {
        let out = UICollectionView(frame: CGRect(x: 0, y: 0, width: 170, height: 70), collectionViewLayout: UICollectionViewLayout())
        out.isScrollEnabled = true
        out.register(UINib(nibName: "CardsCellCV", bundle: nil), forCellWithReuseIdentifier: "CellForCardCV")
        out.translatesAutoresizingMaskIntoConstraints = false
        return out
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        self.cardsCollection.delegate = self
        self.cardsCollection.dataSource = self

        self.setLayout()
        self.setConstraint()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @objc func favouriteBtnTouchUpInside() {
        print ("Fav btn pressed!!!!!")

    }

    private func setLayout() {
        self.addSubview(backView)
        self.addSubview(bankNameLable)
        self.addSubview(favouriteBtn)
    }

    private func setConstraint() {
        NSLayoutConstraint.activate([
            self.backView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self.backView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            self.backView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.backView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10)])

        NSLayoutConstraint.activate([
            self.bankNameLable.leadingAnchor.constraint(equalTo: self.backView.leadingAnchor, constant: 5),
            self.bankNameLable.topAnchor.constraint(equalTo: self.backView.topAnchor, constant: 5),
            self.bankNameLable.widthAnchor.constraint(equalTo: self.backView.widthAnchor, multiplier: 0.8)])

        NSLayoutConstraint.activate([
            self.favouriteBtn.trailingAnchor.constraint(equalTo: self.backView.trailingAnchor, constant: -10),
            self.favouriteBtn.topAnchor.constraint(equalTo: self.backView.topAnchor, constant: 10)])
    }
    
}

extension BankCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellForCardCV", for: indexPath) as? CardsCellCV else {
            return UICollectionViewCell()
        }


        return cell
    }
}

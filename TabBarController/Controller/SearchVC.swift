//
//  SearchVC.swift
//  TabBarController
//
//  Created by Nikolay T on 07.02.2023.
//

import UIKit

class SearchVC: UIViewController {

    @IBOutlet weak var countrySearch: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapCountrySearch(_ sender: Any) {
        print("BTN PRESSED!!!!!!!")
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

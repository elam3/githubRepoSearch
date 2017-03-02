//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Lum Situ on 3/1/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit



class SearchSettingsViewController: UIViewController {

    weak var delegate: SettingsPresentingViewControllerDelegate?
    var searchSettings = GithubRepoSearchSettings()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSaveButtonTapped(_ sender: UIBarButtonItem) {
        self.delegate?.didSaveSettings(settings: searchSettings)
        self.dismiss(animated: true) { 
            
        }
    }
    @IBAction func onCancelButtonTapped(_ sender: UIBarButtonItem) {
        self.delegate?.didCancelSettings()
    }
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        sliderValueLabel.text = "\(Int(sender.value))"
    }
    
    
    
    
//    func didSaveSettings(settings: GithubRepoSearchSettings) {
//        
//    }
//    
//    func didCancelSettings() {
//        prepare(for: "cancelSegue", sender: <#T##Any?#>)
//    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "cancelSegue" || segue.identifier == "saveSegue" {
//            segue.destination as! RepoResultsViewController
//            //let vc = navController.topViewController as! RepoResultsViewController
//        }
//        
//        //vc.searchSettings = searchSettings
//    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

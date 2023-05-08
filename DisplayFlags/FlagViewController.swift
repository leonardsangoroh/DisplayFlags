//
//  FlagViewController.swift
//  DisplayFlags
//
//  Created by Lee Sangoroh on 07/05/2023.
//

import UIKit

class FlagViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var selectedFlag: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Setting NavBar Title
        title = selectedFlag
        
        navigationItem.largeTitleDisplayMode = .never
        
        //Adding a button on the navbar
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        //Setting the image to be loaded
        if let flagToLoad = selectedFlag {
            imageView.image = UIImage(named: flagToLoad)
        }

    }
    
    
    //Hiding and displaying navigation bar
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    //Enabling share
    @objc func shareTapped() {
        //Returns a data object that contains the image in JPEG format
        guard let image = imageView.image?.jpegData(compressionQuality: 0.9)
            else {
            print("No image found")
            return
        }
        
        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated:true)
    }


}

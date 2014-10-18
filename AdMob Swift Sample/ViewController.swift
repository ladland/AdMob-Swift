//
//  ViewController.swift
//  AdMob Swift Sample
//
//  Created by Lindsay Adland on 18/10/2014.
//  Copyright (c) 2014 Somewhereonline. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716" //From Docs, Replace with a correct ID
        self.bannerView.rootViewController = self
        
        var request : GADRequest = GADRequest()
        request.testDevices = [ GAD_SIMULATOR_ID]
        

        
        self.bannerView.loadRequest(request)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


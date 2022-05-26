//
//  ViewController.swift
//  AdMobDemo
//
//  Created by k-arimura on 2022/05/26.
//
import GoogleMobileAds
import UIKit

class ViewController: UIViewController, GADBannerViewDelegate  {
    var bannerView: GADBannerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bannerView = GADBannerView(adSize: GADAdSizeMediumRectangle)
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        bannerView.delegate = self
        
        bannerView.adUnitID = "ca-app-pub-1363572581881541/8784089993"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
        addBannerViewToView(bannerView)
        
    }

    func addBannerViewToView(_ bannerView: GADBannerView) {
       bannerView.translatesAutoresizingMaskIntoConstraints = false
       view.addSubview(bannerView)
       view.addConstraints(
         [NSLayoutConstraint(item: bannerView,
                             attribute: .bottom,
                             relatedBy: .equal,
                             toItem: bottomLayoutGuide,
                             attribute: .top,
                             multiplier: 1,
                             constant: 0),
          NSLayoutConstraint(item: bannerView,
                             attribute: .centerX,
                             relatedBy: .equal,
                             toItem: view,
                             attribute: .centerX,
                             multiplier: 1,
                             constant: 0)
         ])
      }
    
    func bannerViewDidReceiveAd(_ bannerView: GADBannerView) {
      print("bannerViewDidReceiveAd")
    }

    func bannerView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: Error) {
      print("bannerView:didFailToReceiveAdWithError: \(error.localizedDescription)")
    }

    func bannerViewDidRecordImpression(_ bannerView: GADBannerView) {
      print("bannerViewDidRecordImpression")
    }

    func bannerViewWillPresentScreen(_ bannerView: GADBannerView) {
      print("bannerViewWillPresentScreen")
    }

    func bannerViewWillDismissScreen(_ bannerView: GADBannerView) {
      print("bannerViewWillDIsmissScreen")
    }

    func bannerViewDidDismissScreen(_ bannerView: GADBannerView) {
      print("bannerViewDidDismissScreen")
    }

}


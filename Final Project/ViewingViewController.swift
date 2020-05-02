//
//  ViewingViewController.swift
//  Final Project
//
//  Created by Frank Bonura on 5/1/20.
//  Copyright © 2020 Frank Bonura. All rights reserved.
//

import UIKit
import CoreLocation


class ViewingViewController: UIViewController, CLLocationManagerDelegate {
    
    
    @IBAction func hotdogButton(_ sender: Any) {
        
       
    }
    

    
    
    
    
    
    
    
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    let locMan: CLLocationManager = CLLocationManager()
       var startLocation: CLLocation!
       
    let pittsburghLatitude: CLLocationDegrees = 40.4
       let pittsburghLongitude: CLLocationDegrees = -80
       
       func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
              
              let newLocation: CLLocation=locations[0]
              NSLog("Something is happening")
        
        if newLocation.horizontalAccuracy >= 0 {
                      
                      
                      let pittsburgh:CLLocation = CLLocation(latitude: pittsburghLatitude,longitude: pittsburghLongitude)

                      let delta:CLLocationDistance = pittsburgh.distance(from: newLocation)
                      
                      let miles: Double = (delta * 0.000621371) + 0.5 // meters to rounded miles
                      
                      if miles < 3 {
                          // Stop updating the location
                          locMan.stopUpdatingLocation()
                          // Congratulate the user
                          distanceLabel.text = "Enjoy\nPittsburgh!"
                      } else {
                          let commaDelimited: NumberFormatter = NumberFormatter()
                          commaDelimited.numberStyle = NumberFormatter.Style.decimal
                          
                          distanceLabel.text=commaDelimited.string(from: NSNumber(value: miles))!+" miles to Pittsburgh"
                        }
                          
                              }
                              else
                              {
                                  // add action if error with GPS
                              }
                          }
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
                locMan.delegate = self
                locMan.desiredAccuracy = kCLLocationAccuracyThreeKilometers
                locMan.distanceFilter = 1609; // a mile (in meters)
                locMan.requestWhenInUseAuthorization() // verify access to gps
                locMan.startUpdatingLocation()
                startLocation = nil
            }


        }


        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



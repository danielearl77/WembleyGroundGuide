//
//  MapViewController.h
//  Wembley
//
//  Created by MacBookPro on 01/12/2016.
//  Copyright © 2016 MacBookPro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController
{
     IBOutlet MKMapView *map;
}

@property (strong, nonatomic) CLLocationManager *locationManager;

@end

//
//  MapViewController.m
//  Wembley
//
//  Created by MacBookPro on 01/12/2016.
//  Copyright © 2016 MacBookPro. All rights reserved.
//

#import "MapViewController.h"

#define StadeLat 51.55584
#define StadeLong -0.27946

@interface MapViewController ()

@end

@implementation MapViewController
//@synthesize map;


- (void)viewDidLoad {
    
    self.locationManager = [[CLLocationManager alloc] init];
    [self.locationManager requestWhenInUseAuthorization];
    
    CLLocation *DisplayGroundMap = [[CLLocation alloc] initWithLatitude:StadeLat longitude:StadeLong];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(DisplayGroundMap.coordinate, 2000, 2000);
    [map setRegion:region animated:YES];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  BGMViewController.m
//  bus62Gmaps
//
//  Created by Admin on 27.01.14.
//  Copyright (c) 2014 Chematiks. All rights reserved.
//

#import "BGMViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface BGMViewController ()

@end

@implementation BGMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    GMSCameraPosition * camera=[GMSCameraPosition cameraWithLatitude:56.474 longitude:84.984 zoom:11];
    
    GMSMapView * mapView=[GMSMapView mapWithFrame:CGRectMake(0, 0, 320, 480) camera:camera];
    
    GMSMarker * marker=[[GMSMarker alloc] init];
    
    marker.position=camera.target;
    marker.snippet=@"Hello World";
    marker.map=mapView;
    
    [self.view addSubview:mapView];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

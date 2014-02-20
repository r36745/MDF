//
//  DetailViewController.m
//  MdfWeekThree
//
//  Created by Steven Roseman on 2/18/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "DetailViewController.h"
#import "MapProjectViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    MKCoordinateSpan zoomSpan;
    zoomSpan.latitudeDelta = 1.0f;
    zoomSpan.longitudeDelta = 1.0f;
    
    businessNameLabel.text = self.currentSpotOnMap.businessName;
    detailMapView.region = MKCoordinateRegionMake(self.currentSpotOnMap.businessLocation, zoomSpan);
  //  [detailMapView setRegion:MKCoordinateRegionMake(self.currentSpotOnMap.businessLocation, zoomSpan) animated:true];
    
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
    point.coordinate = self.currentSpotOnMap.businessLocation;
    point.title = self.currentSpotOnMap.businessName;
    [detailMapView addAnnotation:point];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}



-(void)viewDidAppear:(BOOL)animated
{
    
    
   
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

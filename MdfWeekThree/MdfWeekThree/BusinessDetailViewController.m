//
//  BusinessDetailViewController.m
//  MdfWeekThree
//
//  Created by Steven Roseman on 2/18/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "BusinessDetailViewController.h"
#import "DetailViewController.h"
#import "MapProjectViewController.h"
#import "MapProjectClass.h"

@interface BusinessDetailViewController ()

@end

@implementation BusinessDetailViewController
@synthesize detailedMapView;


- (id)init
{
    self = [super init];
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
    
    detailedMapView.region = MKCoordinateRegionMake(self.currentSpotOnMap.businessLocation, zoomSpan);
    
    NSMutableArray *pinAnnotations = [[NSMutableArray alloc]init];
    for (int i = 0; i<3; i++)
    {
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        point.coordinate = self.currentSpotOnMap.businessLocation;
        point.title = self.currentSpotOnMap.businessName;
        [pinAnnotations addObject:point];
    }
    [detailedMapView addAnnotations:pinAnnotations];
    
    
    
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

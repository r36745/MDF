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
@synthesize detailedMapView, totalBusiness;


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
    NSMutableArray *allPins = [[NSMutableArray alloc]init];
    
    
    
    for ( int i = 0; i < totalBusiness.count; i++)
    {
        
        
        
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        
        MapProjectClass *detailData = [totalBusiness objectAtIndex:i];
        point.coordinate = CLLocationCoordinate2DMake(detailData.businessLocation.latitude, detailData.businessLocation.longitude);
        point.title = detailData.businessName;
        
        
        [allPins addObject:point];
        
        CLLocationCoordinate2D forZoom = detailData.businessLocation;
        MKCoordinateSpan zoomSpan;
        zoomSpan.latitudeDelta = 1.0f;
        zoomSpan.longitudeDelta = 1.0f;
        [detailedMapView setRegion:MKCoordinateRegionMake(forZoom, zoomSpan)animated:true];
    }
    [detailedMapView addAnnotations:allPins];
    
    
    
    
    
    
    
    
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

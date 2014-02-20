//
//  DetailViewController.h
//  MdfWeekThree
//
//  Created by Steven Roseman on 2/18/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapProjectClass.h"

@interface DetailViewController : UIViewController

{
    CLLocationManager *locationMgr;
    __weak IBOutlet UILabel *businessNameLabel;
    
    __weak IBOutlet MKMapView *detailMapView;
   
}

@property (nonatomic, strong)MapProjectClass *currentSpotOnMap;

@end

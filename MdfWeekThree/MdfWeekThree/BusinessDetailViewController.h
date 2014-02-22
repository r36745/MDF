//
//  BusinessDetailViewController.h
//  MdfWeekThree
//
//  Created by Steven Roseman on 2/18/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapProjectClass.h"
#import "MapProjectViewController.h"

@interface BusinessDetailViewController : UIViewController

{
   
}
@property (weak, nonatomic) IBOutlet MKMapView *detailedMapView;
@property (nonatomic, strong)MapProjectClass *currentSpotOnMap;
@property (nonatomic, strong)NSMutableArray *totalBusiness;

@end

//
//  MapProjectViewController.h
//  MdfWeekThree
//
//  Created by Steven Roseman on 2/18/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>


@interface MapProjectViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, CLLocationManagerDelegate>

{
    //NSMutableArray *allBusinessArray;
    IBOutlet UITableView *mapTableView;
}
- (IBAction)allBusinessButton;
@property (nonatomic, strong)NSMutableArray *allBusinessArray;
@end

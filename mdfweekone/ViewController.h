//
//  ViewController.h
//  MdfWeekOne
//
//  Created by Steven Roseman on 2/6/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TvCustomClass.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

{
    NSMutableArray *tvShowArray;
}

-(IBAction)back:(UIStoryboardSegue*)segue;
@end

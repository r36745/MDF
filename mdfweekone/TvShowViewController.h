//
//  TvShowViewController.h
//  MdfWeekOne
//
//  Created by Steven Roseman on 2/6/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TvCustomClass.h"
#import "TvShowCustomCell.h"

@interface TvShowViewController : UIViewController

{
    IBOutlet UILabel *tvNameLabel;
    IBOutlet UILabel *tvDescriptionLabel;
    IBOutlet UIImageView *secondImageView;
    
    
}

@property (nonatomic, strong)TvCustomClass *currentShow;

@end

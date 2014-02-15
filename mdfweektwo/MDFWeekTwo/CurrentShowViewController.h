//
//  CurrentShowViewController.h
//  MDFWeekTwo
//
//  Created by Steven Roseman on 2/11/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewClass.h"






@interface CurrentShowViewController : UIViewController

{
    IBOutlet UILabel *tvNameLabel;
    IBOutlet UILabel *tvDescriptionLabel;
    IBOutlet UIImageView *secondImageView;
    IBOutlet UITextView *showTextView;
    
    
}

@property (nonatomic, strong)SecondViewClass *currentShow;


@end

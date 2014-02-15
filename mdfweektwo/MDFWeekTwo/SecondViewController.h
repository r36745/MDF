//
//  SecondViewController.h
//  MDFWeekTwo
//
//  Created by Steven Roseman on 2/10/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewClass.h"
#import "CustomCell.h"
#import "CurrentShowViewController.h"

@protocol SecondView <NSObject>

@required
-(void)showDetail:(NSString*)showInfo;
@end

@interface SecondViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

{
    NSMutableArray *tvShowArray;
    
    
}

-(IBAction)onBack:(UIStoryboardSegue*)segue;
@property (nonatomic, strong) id<SecondView>delegate;

@end

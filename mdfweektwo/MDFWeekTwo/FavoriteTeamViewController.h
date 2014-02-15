//
//  FavoriteTeamViewController.h
//  MDFWeekTwo
//
//  Created by Steven Roseman on 2/14/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FavoriteTeamClass.h"

@interface FavoriteTeamViewController : UIViewController

{
    NSArray *teamArray;
}

@property (nonatomic, strong) FavoriteTeamClass *favoriteTeam;

-(IBAction)push;
@end

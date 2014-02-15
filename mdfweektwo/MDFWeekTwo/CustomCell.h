//
//  CustomCell.h
//  MDFWeekTwo
//
//  Created by Steven Roseman on 2/11/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell


{
    IBOutlet UILabel *tvNameLabel;
    IBOutlet UILabel *tvDescriptionLabel;
    IBOutlet UIImageView *showImageView;
}

-(void)updateCellWithShow:(NSString*)firstString secondString:(NSString*)secondString cellImage:(UIImage*)cellImage;

@end

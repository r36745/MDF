//
//  MapProjectCell.h
//  MdfWeekThree
//
//  Created by Steven Roseman on 2/18/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapProjectCell : UITableViewCell

{
    IBOutlet UILabel *tblNamLabel;
    IBOutlet UILabel *tblLocalLabel;
}

-(void)updateCellWithMapInfo:(NSString*)firstString;

@end

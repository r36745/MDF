//
//  MapProjectCell.m
//  MdfWeekThree
//
//  Created by Steven Roseman on 2/18/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "MapProjectCell.h"

@implementation MapProjectCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)updateCellWithMapInfo:(NSString*)firstString secondString:(NSString*)secondString
{
    tblNamLabel.text = firstString;
    tblLocalLabel.text = secondString;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

//
//  CustomCell.m
//  MDFWeekTwo
//
//  Created by Steven Roseman on 2/11/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)updateCellWithShow:(NSString*)firstString secondString:(NSString*)secondString cellImage:(UIImage*)cellImage
{
    tvNameLabel.text = firstString;
    tvDescriptionLabel.text = secondString;
    showImageView.image = cellImage;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

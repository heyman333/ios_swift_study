//
//  CustomCell.m
//  CustomCell
//
//  Created by HanYoungsoo on 2017. 2. 13..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.imgView.contentMode = UIViewContentModeScaleAspectFill;
    self.imgView.layer.cornerRadius = 60.0;
    self.imgView.layer.masksToBounds = true;
    
    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

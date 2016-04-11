//
//  ThirdTableViewCell.m
//  testProject
//
//  Created by Pooja Havaldar on 06/04/16.
//  Copyright © 2016 Silicus. All rights reserved.
//

#import "ThirdTableViewCell.h"

@implementation ThirdTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
     [_statusLabel setText:@"Bulb is ON"];
      [_statusSwitch addTarget:self action:@selector(switchControlChangeValue:) forControlEvents:UIControlEventValueChanged];
    // Initialization code
}
-(void)switchControlChangeValue:(UISwitch *) Switch{
    if (Switch.isOn) {        
        _statusSwitch.on=YES;
        [_statusLabel setText:@"Bulb is ON"];
    }
    else
    {
        _statusSwitch.on=NO;
        [_statusLabel setText:@"Bulb is OFF"];
        
        
    }
    
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

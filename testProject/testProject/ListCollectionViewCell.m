//
//  ListCollectionViewCell.m
//  testProject
//
//  Created by Pooja Havaldar on 06/04/16.
//  Copyright © 2016 Silicus. All rights reserved.
//

#import "ListCollectionViewCell.h"

@implementation ListCollectionViewCell
- (void)setBounds:(CGRect)bounds {
    [super setBounds:bounds];
    self.contentView.frame = bounds;
}
@end

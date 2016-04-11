//
//  FourthTableViewCell.m
//  testProject
//
//  Created by Pooja Havaldar on 06/04/16.
//  Copyright © 2016 Silicus. All rights reserved.
//

#import "FourthTableViewCell.h"
#import "TimeUtilities.h"
@implementation FourthTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}
-(IBAction)showDate:(id)sender
{
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    CGFloat screenWidth = screenSize.width;
    CGFloat screenHeight = screenSize.height;
    _datePicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(0,0,screenWidth,170)];
    
    
    _datePicker.datePickerMode = UIDatePickerModeDate;
    _datePicker.backgroundColor = [UIColor grayColor];
    [_datePicker setValue:[UIColor whiteColor] forKeyPath:@"textColor"];
    _datePicker.hidden = NO;
    _datePicker.date = [NSDate date];
    
    
    _toolBar = [[UIToolbar alloc] initWithFrame: CGRectMake(0,0,screenWidth,40)];
    _toolBar.barStyle = UIBarStyleDefault;
    _toolBar.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    _toolBar.tintColor = [UIColor blackColor];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithTitle: @"Done" style: UIBarButtonItemStylePlain target: self action: @selector(selectDateButtonClicked)];
    UIBarButtonItem* flexibleSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithTitle: @"Cancel" style: UIBarButtonItemStylePlain target: self action: @selector(cancelDateButtonClicked)];
    _toolBar.items = [NSArray arrayWithObjects:cancelButton,flexibleSpace, doneButton, nil];
    
    
    _popoverView = [[UIView alloc] initWithFrame:CGRectMake(0,screenHeight-170-40-64,screenWidth,220)];
    [_popoverView addSubview:_datePicker];
    [_popoverView addSubview:_toolBar];
    UIView *parentView = self;
    while (parentView && ![parentView isKindOfClass:[UITableView class]]) parentView = parentView.superview;
    [parentView addSubview:_popoverView];
    
}
-(void)selectDateButtonClicked{
    
    NSDate *defaultDate = [[NSDate alloc] init];
    defaultDate = [_datePicker date];
    NSString *dateString=[TimeUtilities printDateFormat:defaultDate];
    _calendertextField.text = dateString;
    [_calendertextField resignFirstResponder];
    [_popoverView removeFromSuperview];
}

-(void)cancelDateButtonClicked{
    
    [_calendertextField resignFirstResponder];
    
    [_popoverView removeFromSuperview];
}

@end

//
//  FourthTableViewCell.h
//  testProject
//
//  Created by Pooja Havaldar on 06/04/16.
//  Copyright © 2016 Silicus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JTCalendar/JTCalendar.h>

@interface FourthTableViewCell : UITableViewCell<JTCalendarDelegate>
@property (strong, nonatomic) IBOutlet UIButton *showCalender;
@property (strong, nonatomic) IBOutlet UITextField *calendertextField;


//custom calender control
@property (strong, nonatomic) UIDatePicker* datePicker;
@property (strong, nonatomic) UIView* popoverView;
@property (nonatomic,retain)UIToolbar *toolBar;


@end

//
//  PageViewController.m
//  testProject
//
//  Created by Pooja Havaldar on 07/04/16.
//  Copyright © 2016 Silicus. All rights reserved.
//

#import "PageViewController.h"
#import "EAIntroPage.h"
#import "EAIntroView.h"
@interface PageViewController ()<EAIntroDelegate,UITextViewDelegate,UIGestureRecognizerDelegate>{
    UIView *rootView;
    EAIntroView *intro;
    
}
@property (strong, nonatomic) IBOutlet UITextView* editableTextView;

@end

@implementation PageViewController

#pragma mark - View Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.hidesBackButton=YES;
    self.editableTextView.delegate=self;
    [self showHelpTip];
    [self DetectData];
 
 }
#pragma mark -
-(void)DetectData
{
   
    self.editableTextView.editable = NO;
    self.editableTextView.selectable = YES;
    self.editableTextView.dataDetectorTypes = UIDataDetectorTypeAll;
     self.editableTextView.text=@"TEXTVIEW WITH DATA DETECTOR-\npooja.havaldar7@gmail.com\n09975059100\nhttp://www.apple.com/in/";
    self.editableTextView.scrollEnabled = NO;
}


- (void)showHelpTip{
    
    EAIntroPage *page1 = [EAIntroPage page];
    EAIntroPage *page2 = [EAIntroPage page];
    EAIntroPage *page3 = [EAIntroPage page];
    
    page1.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image1.png"]];
    page2.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image2.png"]];
    page3.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image3.png"]];
    
    intro = [[EAIntroView alloc] initWithFrame:CGRectMake(0,430,self.view.frame.size.width,300) andPages:@[page1,page2,page3]];
    [intro setDelegate:self];
    intro.backgroundColor = [UIColor grayColor];
    intro.pageControlY = 130.f;
    intro.skipButtonAlignment = EAViewAlignmentCenter;
    [intro setDelegate:self];
    [intro showInView:self.view];
    intro.swipeToExit = NO;
}


@end

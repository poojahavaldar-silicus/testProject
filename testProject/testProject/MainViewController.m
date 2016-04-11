//
//  MainViewController.m
//  testProject
//
//  Created by Pooja Havaldar on 06/04/16.
//  Copyright © 2016 Silicus. All rights reserved.
//

#import "MainViewController.h"
#import "MainListTableViewCell.h"
#import "CollectionViewController.h"
#import "SecondTableViewCell.h"
#import "ThirdTableViewCell.h"
#import "FourthTableViewCell.h"
#import "FifthTableViewCell.h"
#import "TimeUtilities.h"
#import <HexColors/HexColors.h>
#import "FifthTableViewCell.h"

@interface MainViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *listTableView;
@property (strong, nonatomic) UIDatePicker* datePicker;


@end

@implementation MainViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UITableView Datasource and Delegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    MainListTableViewCell *listTableViewCell;
    SecondTableViewCell *secondTableViewCell;
    ThirdTableViewCell* thirdTableViewCell;
    FourthTableViewCell *fourthTableViewCell;
    FifthTableViewCell *fifthTableViewCell;
    switch (indexPath.row) {
            
        case 0:
            listTableViewCell = (MainListTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"listCellIdentifier" forIndexPath:indexPath];
            [listTableViewCell setBackgroundColor:[UIColor colorWithHexString:@"#F0F0F0"]];
            cell= listTableViewCell;
            
        case 1:
            secondTableViewCell = (SecondTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"secondcellIdentifier" forIndexPath:indexPath];
            [secondTableViewCell setBackgroundColor:[UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:1.0f]];
            cell= secondTableViewCell;
            
        case 2:
            thirdTableViewCell = (ThirdTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"thirdcellIdentifier" forIndexPath:indexPath];
            [thirdTableViewCell setBackgroundColor:[UIColor colorWithHexString:@"#F0F0F0"]];
            cell= thirdTableViewCell;
            
        case 3:
            fourthTableViewCell = (FourthTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"fourthcellIdentifier" forIndexPath:indexPath];
            [fourthTableViewCell setBackgroundColor:[UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:1.0f]];
            cell= fourthTableViewCell;
            
        case 4:
            fifthTableViewCell = (FifthTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"fifthcellIdentifier" forIndexPath:indexPath];
            [fifthTableViewCell setBackgroundColor:[UIColor colorWithHexString:@"#F0F0F0"]];
            cell= fifthTableViewCell;
            
            
    }
    
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==4) {
        return 120.0f;
    }
    else{
        return 60.0f;
    }
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (indexPath.row) {
        case 0:
            
            [self performSegueWithIdentifier:@"segueToCollectionView" sender:self];
            break;
        case 1:
            [self performSegueWithIdentifier:@"seguetoDetailView" sender:self];
            
            
    }
    
    
}
@end

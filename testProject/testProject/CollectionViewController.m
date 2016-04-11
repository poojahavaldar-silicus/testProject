//
//  CollectionViewController.m
//  testProject
//
//  Created by Pooja Havaldar on 06/04/16.
//  Copyright © 2016 Silicus. All rights reserved.
//

#import "CollectionViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "ListCollectionViewCell.h"
@interface CollectionViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *listImgView;
@property (strong, nonatomic)  NSArray *collectionImagesURL;
@end

@implementation CollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIView *redView = [UIView new];
    redView.backgroundColor = [UIColor whiteColor];
    self.collectionView.backgroundView = redView;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UICollectionView Datasource and Delegate


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 30;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ListCollectionViewCell *listTableViewCell;
    
    listTableViewCell = (ListCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"Images" ofType:@"plist"];
    NSDictionary *imagePaths = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    _collectionImagesURL=[imagePaths objectForKey:@"Remote"];
    NSURL *url = [[NSURL alloc] initWithString:[_collectionImagesURL objectAtIndex:indexPath.row]];
    [listTableViewCell.feedsImgView sd_setImageWithURL:url];
  
    return listTableViewCell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat picDimension = self.view.frame.size.width / 4.0f;
    return CGSizeMake(picDimension, picDimension);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    CGFloat leftRightInset = self.view.frame.size.width / 14.0f;
    return UIEdgeInsetsMake(0, leftRightInset, 0, leftRightInset);
}

@end

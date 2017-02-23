//
//  ViewController.m
//  InstaKilo
//
//  Created by Callum Davies on 2017-02-22.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "ViewController.h"
#import "PhotoCell.h"
#import "Photo.h"
#import "HeaderCollectionReusableView.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSArray *photos;
@property (strong, nonatomic) NSArray *arrayOfSubjectArrays;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Photo *photo1 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"alara hunt"] Subject:@"scene" AndLocation:@"alara"];
    Photo *photo2 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"arthur dayne"] Subject:@"character" AndLocation:@"westeros"];
    Photo *photo3 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"barbarian hill"] Subject:@"scene" AndLocation:@"fantasia"];
    Photo *photo4 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"crusader charge"] Subject:@"scene" AndLocation:@"fantasia"];
    Photo *photo5 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"dragonrider"] Subject:@"character" AndLocation:@"fantasia"];
    Photo *photo6 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"duncan vs baratheon"] Subject:@"scene" AndLocation:@"westeros"];
    Photo *photo7 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"eytan zana 01"] Subject:@"scene" AndLocation:@"fantasia"];
    Photo *photo8 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"mossy shambler"] Subject:@"character" AndLocation:@"fantasia"];
    Photo *photo9 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"ned stark tree"] Subject:@"character" AndLocation:@"westeros"];
    Photo *photo10 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"wolf viking"] Subject:@"character" AndLocation:@"fantasia"];
    
    self.photos = @[photo1,
                    photo2,
                    photo3,
                    photo4,
                    photo5,
                    photo6,
                    photo7,
                    photo8,
                    photo9,
                    photo10,
                    ];
    
    //make subarrays of subject
    NSMutableArray *scenePhotos = [[[NSArray alloc] init] mutableCopy];
    NSMutableArray *characterPhotos = [[[NSArray alloc] init] mutableCopy];
    self.arrayOfSubjectArrays = [NSArray arrayWithObjects:scenePhotos, characterPhotos, nil];
    
    for (Photo *photo in self.photos)
    {
        if ([photo.subject isEqualToString: @"scene"]){
            [scenePhotos addObject:photo];
        } else {
            [characterPhotos addObject:photo];
        }
    }
    
    
    
    //make subarrays of location
//    for (Photo *photo in self.photos)
//    {
//        if ([photo.location isEqualToString: @"alara"]){
//            [scenePhotos addObject:photo];
//        } else {
//            [characterPhotos addObject:photo];
//        }
//    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return [self.arrayOfSubjectArrays count];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [[self.arrayOfSubjectArrays objectAtIndex:section] count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    PhotoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"photoCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor blackColor];
    cell.photo = [self.arrayOfSubjectArrays objectAtIndex:indexPath.section] [indexPath.row];
    
    return cell;
}



// The view that is returned must be retrieved from a call to -dequeueReusableSupplementaryViewOfKind:withReuseIdentifier:forIndexPath:
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        HeaderCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"header" forIndexPath:indexPath];
        headerView.sectionLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.section];
        return headerView;
    }
    return nil;
}

@end

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

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSArray *photos;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Photo *photo1 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"alara hunt"] Subject:@"scene" AndLocation:@"alara"];
    Photo *photo2 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"arthur dayne"] Subject:@"character" AndLocation:@"westeros"];
    Photo *photo3 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"barbarian hill"] Subject:@"scene" AndLocation:@"fantasia"];
    Photo *photo4 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"crusader charge"] Subject:@"scene" AndLocation:@"fantasia"];
    Photo *photo5 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"dragonrider"] Subject:@"character" AndLocation:@"fantasia"];
    Photo *photo6 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"duncan vs baratheon"] Subject:@"scene" AndLocation:@""];
    Photo *photo7 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"eytna zana 01"] Subject:@"" AndLocation:@"fantasia"];
    Photo *photo8 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"mossy shambler"] Subject:@"character" AndLocation:@"fantasia"];
    Photo *photo9 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"ned stark tree"] Subject:@"character" AndLocation:@""];
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
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    PhotoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"photoCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor blackColor];
    cell.photo = self.photos[indexPath.row];
    
    return cell;
}

// The view that is returned must be retrieved from a call to -dequeueReusableSupplementaryViewOfKind:withReuseIdentifier:forIndexPath:
//- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
//{
//
//}

@end

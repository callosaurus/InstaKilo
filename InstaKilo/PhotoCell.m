//
//  PhotoCell.m
//  InstaKilo
//
//  Created by Callum Davies on 2017-02-22.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "PhotoCell.h"

@implementation PhotoCell

-(void)setPhoto:(Photo *)photo
{
    _photo = photo;
    
    [self configure];
}

-(void)configure
{
    self.photoCellImageView.image = self.photo.image;
}

@end

//
//  Photo.m
//  InstaKilo
//
//  Created by Callum Davies on 2017-02-22.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "Photo.h"

@implementation Photo

-(instancetype)initWithImage:(UIImage *)image Subject:(NSString *)subject AndLocation:(NSString *)location
{
    self = [super init];
    if (self) {
        self.image = image;
        self.subject = subject;
        self.location = location;
    }
    return self;
}

@end

//
//  Photo.h
//  InstaKilo
//
//  Created by Callum Davies on 2017-02-22.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Photo : NSObject

@property (nonatomic, strong) NSString *subject;
@property (nonatomic, strong) NSString *location;
@property (nonatomic) UIImage *image;

-(instancetype)initWithImage:(UIImage *)image Subject:(NSString *)subject AndLocation:(NSString *)location;

@end

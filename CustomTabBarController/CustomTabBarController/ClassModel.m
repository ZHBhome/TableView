//
//  ClassModel.m
//  CustomTabBarController
//
//  Created by lijinghua on 15/8/19.
//  Copyright (c) 2015年 lijinghua. All rights reserved.
//

#import "ClassModel.h"

@implementation ClassModel

- (id)initWithClassName:(NSString*)className title:(NSString*)title imageName:(NSString *)imageName selectImageName:(NSString*)selectImagName
{
    if (self = [super init]) {
        
        self.className = className;
        self.tilteName = title;
        self.normalImageName = imageName;
        self.selectImageName = selectImagName;
    }
    
    return self;
}
@end

//
//  ClassModel.h
//  CustomTabBarController
//
//  Created by lijinghua on 15/8/19.
//  Copyright (c) 2015年 lijinghua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassModel : NSObject

@property(nonatomic,copy)NSString *className;
@property(nonatomic,copy)NSString *tilteName;
@property(nonatomic,copy)NSString *normalImageName;
@property(nonatomic,copy)NSString *selectImageName;

//生成自己的初始化方法
- (id)initWithClassName:(NSString*)className title:(NSString*)title imageName:(NSString *)imageName selectImageName:(NSString*)selectImagName;
@end

//
//  CustomTabBarViewController.m
//  CustomTabBarController
//
//  Created by lijinghua on 15/8/19.
//  Copyright (c) 2015年 lijinghua. All rights reserved.
//

#import "CustomTabBarViewController.h"

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"
#import "UIViewController+TabBarItem.h"

#import "ClassModel.h"

@interface CustomTabBarViewController ()

@end

@implementation CustomTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)createContentViewControllers
{
//    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blueColor]} forState:UIControlStateNormal];
//    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} forState:UIControlStateSelected];
    
    //[self testCreateContentViewControllers1];
    //[self testCreateContentViewControllers2];
    [self testCreateContentViewControllers3];
}

- (void)testCreateContentViewControllers3
{
    NSMutableArray *viewControllers = [NSMutableArray array];
    NSArray *modelArray = [self tabBarClassModel];
    for (ClassModel *model in modelArray) {
        UIViewController *viewController = [NSClassFromString(model.className) viewContrllerTitle:model.tilteName normalImage:model.normalImageName selectImageName:model.selectImageName];
        [viewControllers addObject:viewController];
    }
    self.viewControllers   = viewControllers;
}

- (NSArray*)tabBarClassModel
{
    NSMutableArray *array = [NSMutableArray array];
    
    //使用plist时更优的解决方案
    [array addObject:[[ClassModel alloc]initWithClassName:@"FirstViewController" title:@"界面1" imageName:@"tab_0" selectImageName:@"tab_c0"]];
    
    [array addObject:[[ClassModel alloc]initWithClassName:@"SecondViewController" title:@"界面2" imageName:@"tab_1" selectImageName:@"tab_c1"]];
    
    [array addObject:[[ClassModel alloc]initWithClassName:@"ThirdViewController" title:@"界面3" imageName:@"tab_2" selectImageName:@"tab_c2"]];
    
    [array addObject:[[ClassModel alloc]initWithClassName:@"FourViewController" title:@"界面4" imageName:@"tab_3" selectImageName:@"tab_c3"]];
    
    return array;
}

- (void)testCreateContentViewControllers2
{
    NSArray *classNameArray = @[@"FirstViewController",@"SecondViewController",@"ThirdViewController",@"FourViewController"];
    NSMutableArray *viewControllerArray = [NSMutableArray array];
    for (int index = 0; index < classNameArray.count; index++) {
        NSString *className = [classNameArray objectAtIndex:index];
        //[[ alloc] init];
        NSString *title = [NSString stringWithFormat:@"界面%d",index+1];
        NSString *normalImageName = [NSString stringWithFormat:@"tab_%d",index];
        NSString *selectImageName = [NSString stringWithFormat:@"tab_c%d",index];
        UIViewController * viewController = [NSClassFromString(className) viewContrllerTitle:title normalImage:normalImageName selectImageName:selectImageName];
        [viewControllerArray addObject:viewController];
    }
    
    self.viewControllers   = viewControllerArray;
}

- (void)testCreateContentViewControllers1{
    FirstViewController *firstVC = [FirstViewController viewContrllerTitle:@"界面1" normalImage:@"tab_0" selectImageName:@"tab_c0"];
    SecondViewController *secondVC = [SecondViewController viewContrllerTitle:@"界面2" normalImage:@"tab_1" selectImageName:@"tab_c1"];
    ThirdViewController *thirdVC = [ThirdViewController viewContrllerTitle:@"界面3" normalImage:@"tab_2" selectImageName:@"tab_c2"];
    FourViewController *fourVC = [FourViewController viewContrllerTitle:@"界面4" normalImage:@"tab_3" selectImageName:@"tab_c3"];
    
    self.viewControllers = @[firstVC,secondVC,thirdVC,fourVC];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

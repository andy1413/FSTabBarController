//
//  FSTabBarController.m
//  
//
//  Created by 王方帅 on 15/8/13.
//  Copyright (c) 2015年 王方帅. All rights reserved.
//

#import "FSTabBarController.h"
#import "UIView+Frame.h"

@interface FSTabBarController ()

@end

@implementation FSTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.delegate = self;
    self.customTabBarView = [[UIView alloc] initWithFrame:self.tabBar.bounds];
//    [self.tabBar addSubview:_customTabBarView];
    for(UIView *view in self.view.subviews)
    {
        if([view isKindOfClass:[UITabBar class]])
        {
            view.backgroundColor = [UIColor clearColor];
            [(UITabBar *)view setTintColor:[UIColor whiteColor]];
//            view.hidden = YES;
            _customTabBarView.frame = view.bounds;
            [view addSubview:self.customTabBarView];
            break;
        }
    }

    _preSeletedIndex = 0;
    self.selectedIndex = _preSeletedIndex;
    _tabBarButtonArray = [[NSMutableArray alloc] init];
}

-(void)setViewControllers:(NSArray *)viewControllers animated:(BOOL)animated
{
    const float buttonWidth = _customTabBarView.width/viewControllers.count;
    int i = 0;
    FSTabBarItemView *tabBarItemView;
    for (; i < viewControllers.count; i++)
    {
        if (i < _tabBarButtonArray.count)
        {
            tabBarItemView = _tabBarButtonArray[i];
            tabBarItemView.hidden = NO;
        }
        else
        {
            tabBarItemView = [[[NSBundle mainBundle] loadNibNamed:@"FSTabBarItemView" owner:nil options:nil] firstObject];
            
//            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tabBarItemTap:)];
//            [tabBarItemView addGestureRecognizer:tap];
            [_customTabBarView addSubview:tabBarItemView];
            [_tabBarButtonArray addObject:tabBarItemView];
            tabBarItemView.y = 0;
            tabBarItemView.height = _customTabBarView.height;
        }
        tabBarItemView.x = buttonWidth*i;
        tabBarItemView.width = buttonWidth;
    }
    self.selectedIndex = 0;
    
    for (; i < _tabBarButtonArray.count; i++)
    {
        tabBarItemView = _tabBarButtonArray[i];
        tabBarItemView.hidden = YES;
    }
    
    NSLog(@"%@",NSStringFromCGRect(_customTabBarView.frame));
    [super setViewControllers:viewControllers animated:animated];
}

//-(void)tabBarItemTap:(UITapGestureRecognizer *)tap
//{
//    FSTabBarItemView *tabBarItemView = _tabBarButtonArray[_preSeletedIndex];
//    tabBarItemView.selected = NO;
//    
//    tabBarItemView = (FSTabBarItemView *)tap.view;
//    _preSeletedIndex = [_tabBarButtonArray indexOfObject:tabBarItemView];
//    self.selectedIndex = _preSeletedIndex;
//}

-(void)setSelectedIndex:(NSUInteger)selectedIndex
{
    [super setSelectedIndex:selectedIndex];
    FSTabBarItemView *tabBarItemView = _tabBarButtonArray[_preSeletedIndex];
    tabBarItemView.selected = NO;
    
    tabBarItemView = _tabBarButtonArray[selectedIndex];
    tabBarItemView.selected = YES;
    _preSeletedIndex = selectedIndex;
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    NSUInteger index = [self.viewControllers indexOfObject:viewController];
    [self setSelectedIndex:index];
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

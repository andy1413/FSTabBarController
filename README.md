FSTabBarController
=============

## Demo

Build the project and run, you will find this is a good custom tabbarcontroller.

## Usage
#### FSTabBarController 
    -(FSTabBarController *)tabbarController
    {
        FSTabBarController *tabBarC = [[FSTabBarController alloc] init];

        FirstViewController *firstC = [[FirstViewController alloc] init];
        SecondViewController *secondC = [[SecondViewController alloc] init];
        ThirdViewController *thirdC = [[ThirdViewController alloc] init];

        UINavigationController *nav1C = [[UINavigationController alloc] initWithRootViewController:firstC];
        nav1C.navigationBarHidden = YES;

        UINavigationController *nav2C = [[UINavigationController alloc] initWithRootViewController:secondC];
        nav2C.navigationBarHidden = YES;

        UINavigationController *nav3C = [[UINavigationController alloc] initWithRootViewController:thirdC];
        nav3C.navigationBarHidden = YES;

        tabBarC.viewControllers = @[nav1C,nav2C,nav3C];

        FSTabBarItemView *item1 = tabBarC.tabBarButtonArray[0];
        item1.title = @"First";
        item1.color = kUIColorFromRGB(0x7b7b7b);
        item1.selectedColor = RGBCOLOR(66, 157, 150);
        item1.image = [UIImage imageNamed:@"shouye"];
        item1.selectedImage = [UIImage imageNamed:@"shouye_selected"];

        FSTabBarItemView *item2 = tabBarC.tabBarButtonArray[1];
        item2.title = @"Second";
        item2.color = kUIColorFromRGB(0x7b7b7b);
        item2.selectedColor = RGBCOLOR(66, 157, 150);
        item2.image = [UIImage imageNamed:@"kecheng"];
        item2.selectedImage = [UIImage imageNamed:@"kecheng_selected"];

        FSTabBarItemView *item3 = tabBarC.tabBarButtonArray[2];
        item3.title = @"Third";
        item3.color = kUIColorFromRGB(0x7b7b7b);
        item3.selectedColor = RGBCOLOR(66, 157, 150);
        item3.image = [UIImage imageNamed:@"wode"];
        item3.selectedImage = [UIImage imageNamed:@"wode_selected"];
        return tabBarC;
    }
    
## Example
It is very easy to use FSTabBarController while custom TabBar, you can take a look at the following demo
<img src = "http://7x2w39.com1.z0.glb.clouddn.com/tabbar_example.gif" />
<img src = "http://xuntaimage.qiniudn.com/WZFlashButton.gif" />

## License
Copyright © 2015 王方帅.

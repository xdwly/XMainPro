//
//  CViewController.m
//  Testpor
//
//  Created by xdw on 2019/10/22.
//  Copyright © 2019 xdw. All rights reserved.
//

#import "CViewController.h"
#import "CTMediator+A.h"

@interface CViewController ()

@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)click:(id)sender {
    UIViewController *Avc = [[CTMediator sharedInstance] A_Category_Objc_ViewControllerWith:@{}];
    
    [self presentViewController:Avc animated:true completion:nil];
}
- (IBAction)click2:(id)sender {
    UIViewController *Avc = [[CTMediator sharedInstance] A_Category_Objc_ViewControllerWithCallBack:^(NSString * _Nonnull result) {
        NSLog(@"result = %@", result);
    }];
    [self presentViewController:Avc animated:true completion:nil];
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

//
//  UploadViewController.m
//  FinalProject
//
//  Created by Admin on 12/29/15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import "UploadViewController.h"
#import "Model.h"

@interface UploadViewController ()

@end

@implementation UploadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.imageView setImage:self.image];
    
    
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

- (IBAction)btnGo:(id)sender {
    [[Model instance] addImage:self.image];
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end

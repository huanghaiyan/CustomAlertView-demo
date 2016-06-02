//
//  ViewController.m
//  CustomAlertView-demo
//
//  Created by 黄海燕 on 16/6/2.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)clickAlert:(id)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"标题" message:@"内容" preferredStyle:UIAlertControllerStyleAlert];
    alertController.view.tintColor = [UIColor blueColor];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    //Add image 这里可以给button添加图片
//    UIImage *accessoryImage = [UIImage imageNamed:@"selectRDImag.png"];
//    accessoryImage = [accessoryImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    [cancelAction setValue:accessoryImage forKey:@"image"];
    [cancelAction setValue:[UIColor lightGrayColor] forKey:@"titleTextColor"];
    [cancelAction setValue:[NSNumber numberWithInteger:NSTextAlignmentLeft] forKey:@"titleTextAlignment"];
    [cancelAction setValue:[UIColor redColor] forKey:@"imageTintColor"];
    [alertController addAction:cancelAction];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [okAction setValue:[UIColor greenColor] forKey:@"titleTextColor"];
    [alertController addAction:okAction];
    
    //Custom Title
    NSMutableAttributedString *hogan = [[NSMutableAttributedString alloc] initWithString:@"Presenting the Hulk Hogan!"];
    [hogan addAttribute:NSFontAttributeName
                  value:[UIFont systemFontOfSize:20]
                  range:NSMakeRange(13, 11)];
    [alertController setValue:hogan forKey:@"attributedTitle"];
    
    NSMutableAttributedString *hogan1 = [[NSMutableAttributedString alloc] initWithString:@"hjasdghjdfsgkfdghfdgsgdsfgdsfg"];
    [hogan1 addAttribute:NSFontAttributeName
                  value:[UIFont systemFontOfSize:20]
                  range:NSMakeRange(13, 11)];
    [alertController setValue:hogan1 forKey:@"attributedMessage"];

    [self presentViewController:alertController animated:YES completion:nil];
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  WSWAWD
//
//  Created by 梅龙飞 on 16/10/17.
//  Copyright © 2016年 梅龙飞. All rights reserved.
//

#import "ViewController.h"
FILE *fp;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    [self tryToTest];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)tryToTest {
    
    fp = fopen("/Users/MK/Desktop/111.rtf", "w+");
    NSMutableString *wo = @"123456";
    NSMutableArray *array = [NSMutableArray array];
    fwrite((__bridge const void *)(wo), 100, 10, fp);
    rewind(fp);
    NSLog(@"array = %@,%d",array,__LINE__);
    fread((__bridge void *)(array), 100, 10, fp);
    NSLog(@"array = %@,%d",array,__LINE__);
    NSLog(@"wo = %@",wo);
    close(fp);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

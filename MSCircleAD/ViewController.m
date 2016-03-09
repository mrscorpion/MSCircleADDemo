//
//  ViewController.m
//  MSCircleAD
//
//  Created by mr.scorpion on 16/3/9.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//  BANNER AD

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel *contentLabel;
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, assign) NSInteger number;
@property (nonatomic, assign) CGSize size;
@end

@implementation ViewController
#pragma mark - Life Cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *adView = [[UIView alloc] initWithFrame:CGRectMake(0, 60, SCREENWIDTH, 45)];
    adView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:adView];
    
    self.number = 0;
    self.contentLabel = [[UILabel alloc] init];
    self.contentLabel.text = @"一行 ／ 写你的名字 ／ 一行 ／ 诉说他们的故事 /  还有一行 ／ 留给情书和诗 ／ 一封未加戳的信纸 ／ 致给远方的大海 ／ 只言片语   －－《简书》 文／泊";
    self.size = [self.contentLabel.text sizeWithAttributes:@{NSFontAttributeName : kMiddleFont}];
    self.contentLabel.frame = CGRectMake(SCREENWIDTH, 0, self.size.width, 45);
    self.contentLabel.font = kMiddleFont;
    self.contentLabel.textColor = [UIColor whiteColor];
    
    [self.view addSubview:self.contentLabel];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(timerFireMethod) userInfo:nil repeats:YES];
}

#pragma mark - 计时器 NSTimer
- (void)timerFireMethod
{
    if (self.number * 0.5 < self.size.width + SCREENWIDTH) {
        self.number++;
        self.contentLabel.frame = CGRectMake(SCREENWIDTH - self.number * 0.5, 60, self.size.width, 45);
    } else {
        self.number = 0;
        self.contentLabel.frame = CGRectMake(SCREENWIDTH - self.number * 0.5, 60, self.size.width, 45);
    }
}
@end

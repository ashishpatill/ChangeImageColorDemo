//
//  ViewController.m
//  ChangeImageColorDemo
//
//  Created by Ashish Pisey on 7/23/14.
//  Copyright (c) 2014 com.lionkingmedia. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Color.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.chatBbleImgViw setImage:[UIImage imageNamed:@"chatBubble"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeColorBtnAction:(UIButton *)sender
{
    [self changeImageColor];
}

-(void)changeImageColor
{
    UIImage *changedColorImage = [UIImage changeColorForImage:[UIImage imageNamed:@"chatBubble.png"] toColor:[UIColor cyanColor]];
    [self.chatBbleImgViw setImage:changedColorImage];
}

@end

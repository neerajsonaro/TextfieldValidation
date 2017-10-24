//
//  ViewController.m
//  TextfieldValidation
//
//  Created by GBS-mac on 24/10/17.
//  Copyright © 2017 Globussoft. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+NSvalidation.h"

@interface ViewController ()
{
    UITextField *myTextfield;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor grayColor];
    [self createUI];
 }

-(void)createUI
{
    myTextfield=[[UITextField alloc]initWithFrame:CGRectMake(40, 50,SCREEN_WIDTH-80, 50)];
    myTextfield.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:myTextfield];
    
    UIButton *myButton=[[UIButton alloc]initWithFrame:CGRectMake(150, myTextfield.frame.origin.y+myTextfield.frame.size.height+50,SCREEN_WIDTH-300, 40)];
    myButton.backgroundColor=[UIColor redColor];
    [myButton setTitle:@"Press" forState:UIControlStateNormal];
    [myButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [myButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myButton];
}

-(void)buttonAction:(UIButton *) sender
{
    NSLog(@" Button Action");
  
//    if ([myTextfield allowOnlyAlphabets]==NO) {
//        
//        NSLog(@"not valid");
//    }
    
//    if ([myTextfield allowOnlyNumbers]==NO) {
//        
//        NSLog(@"not valid");
//    }
    
//    if ([myTextfield allowAlphaNumeric]==NO) {
//        
//        NSLog(@"not valid");
//    }
    
//    if ([myTextfield validatePhoneNumber]==NO)
//    {
//        NSLog(@"Not in Range");
//    }
//    
//    if ([myTextfield maximumTextRange:@"10"]==NO)
//    {
//        NSLog(@"Not in Range");
//    }
//    if ( [myTextfield requiredText]==NO) {
//        NSLog(@"ENTER TEXT");
//    }
//    else if ([myTextfield validEmailAddress]==NO)
//    {
//        NSLog(@"Email Format is not valid");
//    }
//    else if ([myTextfield maximumTextRange:@"10"]==NO)
//    {
//        NSLog(@"Not in Range");
//    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end

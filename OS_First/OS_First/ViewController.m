//
//  ViewController.m
//  OS_First
//
//  Created by student on 11/10/2021.
//  Copyright © 2021 pb. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)enter {
    NSString *yourName = self.inputField.text;
    NSString *myName = @"YourName";
    NSString *message;
    
    if ([yourName length] == 0) {
     yourName = @"World";
    }
    
    if ([yourName isEqualToString:myName]) {
     message = [NSString stringWithFormat:@"Hello %@! We have same name :)", yourName];
    }else {
     message = [NSString stringWithFormat:@"Hello %@!", yourName
    ];
    }
                
    self.messageLabel.text = message;
}

- (void) prapareForSague:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"sendSurnameSegue"]){
        SecondViewController *controller = (SecondViewController *) segue.destinationViewController;
        controller.surname = self.surnameTextField.text;
    }
}


@end

//
//  SecondViewController.h
//  OS_First
//
//  Created by student on 11/10/2021.
//  Copyright © 2021 pb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *modifiedSurmaneField

@property NSString *surname

@class SecondViewController;

@protocol SecondViewControllerDelagate <NSObject>

-(void) addItemViewController:(SecondViewController *) controller didfinishEnteringItem: (NSString *) item;

@property (nonatomic, weak) id<SecondViewControllerDelagate> delegate;

@end

NS_ASSUME_NONNULL_END

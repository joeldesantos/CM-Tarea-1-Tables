//
//  ViewController.h
//  CM Tarea 1 Tables
//
//  Created by Aleyr on 6/28/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tblHome;

- (IBAction)btnAddPressed:(id)sender;

@end


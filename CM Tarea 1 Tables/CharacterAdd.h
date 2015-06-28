//
//  CharacterAdd.h
//  CM Tarea 1 Tables
//
//  Created by Aleyr on 6/28/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CharacterAdd : UIViewController

@property int imgIndex;
@property (strong, nonatomic) IBOutlet UIImageView *imgCharacter;
@property (strong, nonatomic) IBOutlet UITextField *tfName;
@property (strong, nonatomic) IBOutlet UITextField *tfKingdom;

- (IBAction)btnCancelPressed:(id)sender;
- (IBAction)btnAddPressed:(id)sender;
- (IBAction)btnLeftPressed:(id)sender;
- (IBAction)btnRightPressed:(id)sender;

@end

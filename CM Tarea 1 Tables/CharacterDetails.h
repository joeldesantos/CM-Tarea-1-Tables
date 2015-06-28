//
//  CharacterDetails.h
//  CM Tarea 1 Tables
//
//  Created by Aleyr on 6/28/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CharacterDetails : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imgCharacter;
@property (strong, nonatomic) IBOutlet UILabel *lblName;
@property (strong, nonatomic) IBOutlet UILabel *lblKingdom;

- (IBAction)btnDonePressed:(id)sender;

@end

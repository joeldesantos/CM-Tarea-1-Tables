//
//  CharacterCell.h
//  CM Tarea 1 Tables
//
//  Created by Aleyr on 6/28/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CharacterCell : UITableViewCell

//image
@property (strong, nonatomic) IBOutlet UIImageView *imgCell;

//Labels
@property (strong, nonatomic) IBOutlet UILabel *lblNameCell;
@property (strong, nonatomic) IBOutlet UILabel *lblKingdomCell;

@end

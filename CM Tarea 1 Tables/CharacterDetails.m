//
//  CharacterDetails.m
//  CM Tarea 1 Tables
//
//  Created by Aleyr on 6/28/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import "CharacterDetails.h"
#import "Home.h"
#import "DataClass.h"

@interface CharacterDetails ()

@end

@implementation CharacterDetails

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    DataClass *data=[DataClass getInstance];
    self.imgCharacter.image  = [UIImage imageNamed:data.maImgsDS[data.iCharacterIndex]];
    self.lblName.text   = data.maNamesDS[data.iCharacterIndex];
    self.lblKingdom.text   = data.maKingdomsDS[data.iCharacterIndex];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnDonePressed:(id)sender {
    Home *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Home"];
    [self presentViewController:vc animated:YES completion:nil];

}

@end

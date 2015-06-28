//
//  CharacterAdd.m
//  CM Tarea 1 Tables
//
//  Created by Aleyr on 6/28/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import "CharacterAdd.h"
#import "Home.h"
#import "DataClass.h"

@interface CharacterAdd ()

@end

@implementation CharacterAdd

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initCrontroller];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initCrontroller {
    self.imgIndex = 0;
    DataClass *data=[DataClass getInstance];
    self.imgCharacter.image = [UIImage imageNamed:data.maImgs[self.imgIndex]];
    self.imgCharacter.frame  = CGRectMake(self.imgCharacter.frame.origin.x,self.imgCharacter.frame.origin.y,120,150);
    self.tfName.text = @"";
    self.tfKingdom.text = @"";
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnCancelPressed:(id)sender {
    Home *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Home"];
    [self presentViewController:vc animated:YES completion:nil];

}

- (IBAction)btnAddPressed:(id)sender {
    
    // Add new objects to the arrays used as DS
    DataClass *data=[DataClass getInstance];
    [data.maImgsDS insertObject:data.maImgs[self.imgIndex] atIndex:0];
    [data.maNamesDS insertObject:self.tfName.text atIndex:0];
    [data.maKingdomsDS insertObject:self.tfKingdom.text atIndex:0];
    
    /*
    for (NSString *name in data.maNamesDS) {
        NSLog(name);
    }
     */
    
    //Navigate to Home
    Home *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Home"];
    
    [self presentViewController:vc animated:YES completion:^{
        //this code here will execute when modal is done being dismissed
        //NSLog(@"btnAddPressed pressed action completed");
        [vc.tblHome reloadData];
    }];

}

- (IBAction)btnLeftPressed:(id)sender {
    self.imgIndex--;
    
    DataClass *data=[DataClass getInstance];
    if (self.imgIndex < 0) {
        self.imgIndex = (int)data.maImgs.count - 1;
    }
    
    self.imgCharacter.image = [UIImage imageNamed:data.maImgs[self.imgIndex]];
    self.imgCharacter.frame  = CGRectMake(self.imgCharacter.frame.origin.x,self.imgCharacter.frame.origin.y,120,150);
}

- (IBAction)btnRightPressed:(id)sender {
    self.imgIndex++;
    
    DataClass *data=[DataClass getInstance];
    if (self.imgIndex >= data.maImgs.count) {
        self.imgIndex = 0;
    }
    
    self.imgCharacter.image = [UIImage imageNamed:data.maImgs[self.imgIndex]];
    self.imgCharacter.frame  = CGRectMake(self.imgCharacter.frame.origin.x,self.imgCharacter.frame.origin.y,120,150);
}
@end

//
//  ViewController.m
//  CM Tarea 1 Tables
//
//  Created by Aleyr on 6/28/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import "Home.h"
#import "DataClass.h"
#import "CharacterCell.h"
#import "CharacterDetails.h"
#import "CharacterAdd.h"

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    //Initialize arrays
    DataClass *data=[DataClass getInstance];
    data.iCharacterIndex = 0;
}

/**********************************************************************************************/
#pragma mark - Button Action methods
/**********************************************************************************************/

- (IBAction)btnAddPressed:(id)sender {
    CharacterAdd *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"CharacterAdd"];
    [self presentViewController:vc animated:YES completion:nil];
}

/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    DataClass *data=[DataClass getInstance];
    return data.maNamesDS.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Initialize cells
    CharacterCell *cell = (CharacterCell *)[tableView dequeueReusableCellWithIdentifier:@"CharacterCell"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"CharacterCell" bundle:nil] forCellReuseIdentifier:@"CharacterCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"CharacterCell"];
    }
    //Fill cell with info from arrays
    DataClass *data=[DataClass getInstance];
    cell.lblNameCell.text   = data.maNamesDS[indexPath.row];
    cell.lblKingdomCell.text    = data.maKingdomsDS[indexPath.row];
    cell.imgCell.image  = [UIImage imageNamed:data.maImgsDS[indexPath.row]];
    cell.imgCell.frame  = CGRectMake(0,0,40,50);
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DataClass *data=[DataClass getInstance];
    data.iCharacterIndex = (int)indexPath.row;
    CharacterDetails *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"CharacterDetails"];
    
    [self presentViewController:viewController animated:YES completion:nil];
    
}

@end

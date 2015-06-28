//
//  DataClass.h
//  CM Tarea 1 Tables
//
//  Created by Aleyr on 6/28/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataClass : NSObject {

    int iCharacterIndex;
    
    NSMutableArray *maNames;
    NSMutableArray *maKingdoms;
    NSMutableArray *maImgs;

    
    NSMutableArray *maNamesDS;
    NSMutableArray *maKingdomsDS;
    NSMutableArray *maImgsDS;
}

@property()int iCharacterIndex;

@property(nonatomic,retain)NSMutableArray *maNames;
@property(nonatomic,retain)NSMutableArray *maKingdoms;
@property(nonatomic,retain)NSMutableArray *maImgs;

@property(nonatomic,retain)NSMutableArray *maNamesDS;
@property(nonatomic,retain)NSMutableArray *maKingdomsDS;
@property(nonatomic,retain)NSMutableArray *maImgsDS;

+(DataClass*)getInstance;

@end

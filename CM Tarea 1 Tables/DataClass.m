//
//  DataClass.m
//  CM Tarea 1 Tables
//
//  Created by Aleyr on 6/28/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import "DataClass.h"

@implementation DataClass

@synthesize iCharacterIndex;

@synthesize maNames;
@synthesize maKingdoms;
@synthesize maImgs;

@synthesize maNamesDS;
@synthesize maKingdomsDS;
@synthesize maImgsDS;

static DataClass *instance = nil;

+(DataClass *)getInstance
{
    @synchronized(self)
    {
        if(instance==nil)
        {
            instance= [DataClass new];
            [instance initValues];
        }
    }
    return instance;
}

- (void)initValues
{
    iCharacterIndex = 0;
    
    maNamesDS         = [[NSMutableArray alloc] initWithObjects: @"Daenerys Targarien", @"Arya Stark", @"Tyrion Lanister", nil];
    maKingdomsDS      = [[NSMutableArray alloc] initWithObjects: @"Dragonstone", @"North", @"Rock", nil];
    maImgsDS          = [[NSMutableArray alloc] initWithObjects: @"Daenerys.png", @"Arya.png", @"Tyrion.png", nil];
    
    maNames         = [[NSMutableArray alloc] initWithObjects: @"Arya Stark", @"Sansa Stark", @"Tyrion Lanister", @"Jon Snow", @"Cersei Lanister",
                       @"Daenerys Targarien", @"Melisandre", @"Tommen Baratheon", @"Petyr Baelish", @"Brandon Stark",
                       nil];
    maKingdoms      = [[NSMutableArray alloc] initWithObjects: @"North", @"North", @"Rock", @"North", @"Rock",
                       @"Dragonstone", @"Asshai", @"King's Landing", @"Mountain and Vale", @"North",
                       nil];
    maImgs          = [[NSMutableArray alloc] initWithObjects: @"Arya.png", @"Sansa.png", @"Tyrion.png", @"Jon_Snow.png", @"Cersei.png",
                       @"Daenerys.png", @"Melisandre.png", @"Tommen.png", @"Little_Finger.png", @"Bran.png",
                       nil];
}

@end

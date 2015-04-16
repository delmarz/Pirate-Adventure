//
//  DMZFactory.h
//  Pirate Adventure 3
//
//  Created by delmarz on 8/20/14.
//  Copyright (c) 2014 Dream Code. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMZTile.h"
#import "DMZCharacter.h"
#import "DMZBoss.h"

@interface DMZFactory : NSObject

-(NSArray *)tiles;
-(DMZCharacter *)character;
-(DMZBoss *)boss;

@end

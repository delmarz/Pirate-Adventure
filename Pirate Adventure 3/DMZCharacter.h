//
//  DMZCharacter.h
//  Pirate Adventure 3
//
//  Created by delmarz on 8/20/14.
//  Copyright (c) 2014 Dream Code. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMZArmor.h"
#import "DMZWeapon.h"

@interface DMZCharacter : NSObject

@property (strong, nonatomic) DMZArmor *armoR;
@property (strong, nonatomic) DMZWeapon *weapoN;
@property (nonatomic) int healtH;
@property (nonatomic) int damagE;


@end

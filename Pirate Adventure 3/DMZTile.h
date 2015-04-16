//
//  DMZTile.h
//  Pirate Adventure 3
//
//  Created by delmarz on 8/20/14.
//  Copyright (c) 2014 Dream Code. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMZArmor.h"
#import "DMZWeapon.h"

@interface DMZTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) UIImage *imageBackground;

@property (strong, nonatomic) DMZArmor *armoRR;
@property (strong, nonatomic) DMZWeapon *weapoNN;
@property (nonatomic) int healthEffect;

@end

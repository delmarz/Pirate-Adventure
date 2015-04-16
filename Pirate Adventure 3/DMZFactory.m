//
//  DMZFactory.m
//  Pirate Adventure 3
//
//  Created by delmarz on 8/20/14.
//  Copyright (c) 2014 Dream Code. All rights reserved.
//

#import "DMZFactory.h"

@implementation DMZFactory


-(NSArray *)tiles
{
    
    DMZTile *tile1 = [[DMZTile alloc] init];
    tile1.story = @"Captain, we need a fearless leader such as yourself to undertake a voyage. You just stop the evil pirate Boss. Would you like a blunted sword to get started?";
    tile1.imageBackground = [UIImage imageNamed:@"PirateStart.jpg"];
    
    DMZWeapon *bluntedSword = [[DMZWeapon alloc] init];
    bluntedSword.weaponName = @"Blunted Sword";
    bluntedSword.damage = 14;
    tile1.weapoNN = bluntedSword;
    tile1.actionButtonName = @"Take Sword";
    
    DMZTile *tile2 = [[DMZTile alloc] init];
    tile2.story = @"You have come across an armory. Would you like to upgrade your armor to steel armour? ";
    tile2.imageBackground = [UIImage imageNamed:@"pirateblacksmith.jpg"];
    
    DMZArmor *steelArmor = [[DMZArmor alloc] init];
    steelArmor.armorName = @"Steel Armor";
    steelArmor.health = 15;
    tile2.armoRR = steelArmor;
    tile2.actionButtonName = @"Use Steel Armor";
    
    DMZTile *tile3 = [[DMZTile alloc] init];
    tile3.story = @"A mysterious dock appers on the horizon. Should we stop and ask for directions? ";
    tile3.imageBackground = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = -7;
    tile3.actionButtonName = @"Stop At Dock";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    DMZTile *tile4 = [[DMZTile alloc] init];
    tile4.story = @"You have found a parrot. This can be used in your armor slot. Parrots are a great defender and are fiercly loyal to their captain!";
    tile4.imageBackground = [UIImage imageNamed:@"parrot.jpg"];
    
    DMZArmor *parrot = [[DMZArmor alloc] init];
    parrot.armorName = @"Parrot";
    parrot.health = 20;
    tile4.armoRR = parrot;
    tile4.actionButtonName = @"Adopt Parrot";
    
    
    DMZTile *tile5 = [[DMZTile alloc] init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons. Would you like to upgade to a pistol? ";
    tile5.imageBackground = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    
    DMZWeapon *pistol = [[DMZWeapon alloc] init];
    pistol.weaponName = @"Pistol";
    pistol.damage = 17;
    tile5.weapoNN = pistol;
    tile5.actionButtonName = @"Use Pistol";
    
    
    
    DMZTile *tile6 = [[DMZTile alloc] init];
    tile6.story = @"You have been captured by pirates and are ordered to walk the plank ";
    tile6.imageBackground = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -14;
    tile6.actionButtonName = @"Show No Fear";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    DMZTile *tile7 = [[DMZTile alloc] init];
    tile7.story = @"You have sighted a pirate battle off the coast. Should we intervene?";
    tile7.imageBackground = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 5;
    tile7.actionButtonName = @"Fight Those Scum!";
    
    
    DMZTile *tile8 = [[DMZTile alloc] init];
    tile8.story = @"The legend of the deep. The mighty kraken appears";
    tile8.imageBackground = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -19;
    tile8.actionButtonName = @"Abandon Ship";
    
    DMZTile *tile9 = [[DMZTile alloc] init];
    tile9.story = @"You have stumbled upon a hidden cave of the pirate treasurer";
    tile9.imageBackground = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 17;
    tile9.actionButtonName = @"Take Treasurer";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    DMZTile *tile10 = [[DMZTile alloc] init];
    tile10.story = @"A group of pirates attempts to board your ship.";
    tile10.imageBackground = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -11;
    tile10.actionButtonName = @"Repel The Invaders";
    
    DMZTile *tile11 = [[DMZTile alloc] init];
    tile11.story = @"In the deep of the sea many things live and many things can  be found. Will the fortune bring help or ruin?";
    tile11.imageBackground = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim Deeper";
    
    DMZTile *tile12 = [[DMZTile alloc] init];
    tile12.story = @"Your final faceoff with the fearsome pirate boss!";
    tile12.imageBackground = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Figth The BOSS!";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tileWrap = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    return tileWrap;
    
}

-(DMZCharacter *)character
{
    
    DMZCharacter *character = [[DMZCharacter alloc] init];
    character.healtH = 100;
    
    DMZWeapon *weapon = [[DMZWeapon alloc] init];
    weapon.weaponName = @"Fist";
    weapon.damage = 5;
    character.weapoN = weapon;
    
    DMZArmor *armor = [[DMZArmor alloc] init];
    armor.armorName = @"Cloak";
    armor.health = 12;
    character.armoR = armor;
    
    return character;
    
}

-(DMZBoss *)boss
{
    
    DMZBoss *boss = [[DMZBoss alloc] init];
    boss.healthBoss = 65;
    
    return boss;
}



@end

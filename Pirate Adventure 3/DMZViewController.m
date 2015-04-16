//
//  DMZViewController.m
//  Pirate Adventure 3
//
//  Created by delmarz on 8/20/14.
//  Copyright (c) 2014 Dream Code. All rights reserved.
//

#import "DMZViewController.h"
#import "DMZFactory.h"

@interface DMZViewController ()

@end

@implementation DMZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    DMZFactory *factory = [[DMZFactory alloc] init];
    
    self.tileS = [factory tiles];
    self.myCharacter = [factory character];
    self.myBoss = [factory boss];
    
    self.currentPoints = CGPointMake(0, 0);
    
    [self updateCharacterStatsForArmor:nil andWeapon:nil andHealthEffect:0];
    [self updateTile];
    [self updateButtons];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(UIButton *)sender
{
    DMZTile *tile = [[self.tileS objectAtIndex:self.currentPoints.x]objectAtIndex:self.currentPoints.y];
    
    if (tile.healthEffect == -15) {
        self.myBoss.healthBoss -= self.myBoss.healthBoss - self.myCharacter.weapoN.damage;
    }
    
    [self updateCharacterStatsForArmor:tile.armoRR andWeapon:tile.weapoNN andHealthEffect:tile.healthEffect];
    
    if (self.myCharacter.healtH <= 0) {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Death Message" message:@"you lose please try again" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertView show];
    }
    else if (self.myBoss.healthBoss <= 0){
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Victory Message" message:@"Congratulations You defeated againts boss!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertView show];
    }
    [self updateTile];
    
    
}

- (IBAction)northButtonPressed:(UIButton *)sender
{
    self.currentPoints = CGPointMake(self.currentPoints.x, self.currentPoints.y +1);
    [self updateTile];
    [self updateButtons];
}

- (IBAction)westButtonPressed:(UIButton *)sender
{
    self.currentPoints = CGPointMake(self.currentPoints.x -1, self.currentPoints.y);
    [self updateTile];
    [self updateButtons];
    
}

- (IBAction)southButtonPressed:(UIButton *)sender
{
    self.currentPoints = CGPointMake(self.currentPoints.x, self.currentPoints.y -1);
    [self updateTile];
    [self updateButtons];
}

- (IBAction)eastButtonPressed:(UIButton *)sender
{
    self.currentPoints = CGPointMake(self.currentPoints.x +1, self.currentPoints.y);
    [self updateTile];
    [self updateButtons];
}

- (IBAction)resetUButtonPressed:(UIButton *)sender
{
    [self viewDidLoad];
    [self updateTile];
}

-(void)updateTile
{
    
    DMZTile *tile = [[self.tileS objectAtIndex:self.currentPoints.x]objectAtIndex:self.currentPoints.y];
    self.storyLabel.text = tile.story;
    self.myImageView.image = tile.imageBackground;
    self.healthLabel.text = [NSString stringWithFormat:@"%i", self.myCharacter.healtH];
    self.damageLabel.text = [NSString stringWithFormat:@"%i", self.myCharacter.damagE];
    self.armorLabel.text = self.myCharacter.armoR.armorName;
    self.weaponLabel.text = self.myCharacter.weapoN.weaponName;
    [self.actionButton setTitle:tile.actionButtonName forState:UIControlStateNormal];
    
}

-(void)updateButtons
{
    
    
    self.northButton.hidden = [self yesToHideOrNot:CGPointMake(self.currentPoints.x, self.currentPoints.y +1)];
    self.westButton.hidden = [self yesToHideOrNot:CGPointMake(self.currentPoints.x -1, self.currentPoints.y)];
    self.southButton.hidden = [self yesToHideOrNot:CGPointMake(self.currentPoints.x, self.currentPoints.y -1)];
    self.eastButton.hidden = [self yesToHideOrNot:CGPointMake(self.currentPoints.x +1, self.currentPoints.y)];
}


-(BOOL)yesToHideOrNot:(CGPoint)point
{
    
    if (point.x >= 0 && point.y >= 0 && point.x < [self.tileS count] && point.y < [[self.tileS objectAtIndex:point.x]count]) {
        return NO;
    }
    return YES;
    
}

-(void)updateCharacterStatsForArmor:(DMZArmor *)armor andWeapon:(DMZWeapon *)weapon andHealthEffect:(int)healthEffect
{
    
    if (armor != nil) {
        self.myCharacter.healtH = self.myCharacter.healtH - self.myCharacter.armoR.health + armor.health;
        self.myCharacter.armoR = armor;
        
    }
    else if (weapon != nil){
        self.myCharacter.damagE = self.myCharacter.damagE - self.myCharacter.weapoN.damage + weapon.damage;
        self.myCharacter.weapoN = weapon;
    }
    else if (healthEffect != 0){
        self.myCharacter.healtH = self.myCharacter.healtH + healthEffect;
    }
    else {
        self.myCharacter.healtH = self.myCharacter.healtH + self.myCharacter.armoR.health;
        self.myCharacter.damagE = self.myCharacter.damagE + self.myCharacter.weapoN.damage;
    }
    
    
}



@end

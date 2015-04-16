//
//  DMZViewController.h
//  Pirate Adventure 3
//
//  Created by delmarz on 8/20/14.
//  Copyright (c) 2014 Dream Code. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DMZCharacter.h"
#import "DMZBoss.h"

@interface DMZViewController : UIViewController

//iVars

@property (strong, nonatomic) DMZBoss *myBoss;
@property (strong, nonatomic) DMZCharacter *myCharacter;
@property (strong, nonatomic) NSArray *tileS;
@property (nonatomic) CGPoint currentPoints;



//IBOutlet

@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;

@property (strong, nonatomic) IBOutlet UIImageView *myImageView;

@property (strong, nonatomic) IBOutlet UIButton *actionButton;

@property (strong, nonatomic) IBOutlet UILabel *storyLabel;

@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;

//IBAction

- (IBAction)actionButtonPressed:(UIButton *)sender;

- (IBAction)northButtonPressed:(UIButton *)sender;
- (IBAction)westButtonPressed:(UIButton *)sender;
- (IBAction)southButtonPressed:(UIButton *)sender;
- (IBAction)eastButtonPressed:(UIButton *)sender;

- (IBAction)resetUButtonPressed:(UIButton *)sender;




@end

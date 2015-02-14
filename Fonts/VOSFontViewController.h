//
//  VOSFontViewController.h
//  Fonts
//
//  Created by Vicente Oliva de la Serna on 14/2/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VOSFontViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *font;
@property (weak, nonatomic) IBOutlet UITextView *exampleText;
@property (strong, nonatomic) UIFont *aFont;

-(id)initWithFont:(UIFont *) fontType;

@end

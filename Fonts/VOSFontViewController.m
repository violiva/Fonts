//
//  VOSFontViewController.m
//  Fonts
//
//  Created by Vicente Oliva de la Serna on 14/2/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import "VOSFontViewController.h"

@interface VOSFontViewController ()

@end

@implementation VOSFontViewController

-(id) initWithFont:(UIFont *)fontType{
    if (self =[super initWithNibName:nil
                              bundle:nil]) {
        _aFont = fontType;
    }
    return  self;
}


-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.exampleText.font = self.aFont;
    
    self.font.text = self.aFont.fontName;
    self.font.font = [self.aFont fontWithSize:30.0];
    self.font.adjustsFontSizeToFitWidth = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

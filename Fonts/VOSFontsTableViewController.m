//
//  VOSFontsTableViewController.m
//  Fonts
//
//  Created by Vicente Oliva de la Serna on 14/2/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import "VOSFontsTableViewController.h"
#import "VOSFontViewController.h"

@interface VOSFontsTableViewController ()
@property (strong, nonatomic) NSArray * familyNames;
@end

@implementation VOSFontsTableViewController

- (id)initWithStyle:(UITableViewStyle)style{
    self = [super initWithStyle:style];
    if (self) {
        _familyNames = [[UIFont familyNames] sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
        self.title = @"Fontapedia";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return [self.familyNames count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [[UIFont fontNamesForFamilyName:[self.familyNames objectAtIndex:section]] count];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [self.familyNames objectAtIndex:section];
}

-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    NSMutableArray *indexFont = [NSMutableArray arrayWithCapacity:25];
    for ( NSString *familyName in self.familyNames){
        NSString *initCap = [familyName substringToIndex:1];
        if (![indexFont containsObject:initCap]){
            // no encuentra la inicial en el array del índice
            // la añadimos
            [indexFont addObject:initCap];
        }
    }
    return indexFont;
}

-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index{
    for ( int ind = 0; ind < [self.familyNames count]; ind++){
        if ( [[[self.familyNames objectAtIndex:ind] substringToIndex:1] isEqualToString:title] ){
            return ind;
        }
    }
    return index;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier ];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:CellIdentifier];
        
    }
    
    // Configure the cell...
    NSString *fontName = [[[UIFont fontNamesForFamilyName:[self.familyNames objectAtIndex:indexPath.section]]sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)] objectAtIndex:indexPath.row];
    cell.textLabel.text = fontName;
    cell.textLabel.font = [UIFont fontWithName:fontName
                                          size:30.0];
    cell.textLabel.adjustsFontSizeToFitWidth = YES;
    
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *fontName = [[[UIFont fontNamesForFamilyName:[self.familyNames objectAtIndex:indexPath.section]]sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)] objectAtIndex:indexPath.row];

    UIFont *font = [UIFont fontWithName:fontName
                                   size:20.0];
    VOSFontViewController *fVC = [[VOSFontViewController alloc] initWithFont:font];
    
    [self.navigationController pushViewController:fVC
                                         animated:YES];
}


@end

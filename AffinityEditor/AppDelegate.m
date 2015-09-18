//
//  AppDelegate.m
//  AffinityEditor
//
//  Created by LaughungMan on 18.09.15.
//  Copyright (c) 2015 LaughungMan. All rights reserved.
//

#import "AppDelegate.h"
@implementation AppDelegate
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification 
{
   [self populateTable];
}
- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender
{
    return YES;
}
- (IBAction)openFile:(id)sender {
    NSOpenPanel* openDlg =[NSOpenPanel openPanel];
    [openDlg setCanChooseFiles:YES];
    [openDlg setAllowsMultipleSelection:NO];
    [openDlg setCanCreateDirectories:NO];
    [openDlg setExtensionHidden:NO];
    if([openDlg runModal] == NSOKButton)
    {
       NSURL* url = [[openDlg URLs] objectAtIndex:0];
       NSLog(@"Url: %@", url);
       data = [NSData dataWithContentsOfURL:url];
    }
}
- (void) populateTable
{
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    // Add some values to the dictionary
    // which match up to the NSTableView bindings
    [value setObject:[NSNumber numberWithInt:0] forKey:@"id"];
    [value setObject:[NSNumber numberWithInt:1] forKey:@"id"];
    [value setObject:[NSNumber numberWithInt:2] forKey:@"id"];
   // [value setObject:[NSString stringWithFormat:@"test"] forKey:@"name"];
    
    [arrayController addObject:value];
    
  //  [value release];
    
    [theTable reloadData];
}
@end

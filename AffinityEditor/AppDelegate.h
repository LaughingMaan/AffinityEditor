//
//  AppDelegate.h
//  AffinityEditor
//
//  Created by LaughungMan on 18.09.15.
//  Copyright (c) 2015 LaughungMan. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    IBOutlet NSTableView* AffinityList;
    NSData* data;
    IBOutlet NSArrayController *arrayController;
    IBOutlet NSTableView *theTable;
}
@property (assign) IBOutlet NSArrayController *arrayController;
@property (assign) IBOutlet NSTableView *theTable;

- (void) populateTable;
@property (assign) IBOutlet NSWindow *window;
- (IBAction)openFile:(id)sender;

@end

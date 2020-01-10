//
//  STPreferencesAdvancedViewController.m
//  syncthing
//
//  Created by Jerry Jacobs on 04/10/2016.
//  Copyright © 2016 Jerry Jacobs. All rights reserved.
//

#import "STPreferencesAdvancedViewController.h"

@interface STPreferencesAdvancedViewController ()

@end

@implementation STPreferencesAdvancedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (id) init {
    self = [super initWithNibName:NSStringFromClass(self.class) bundle:nil];
    // TODO(jb): Executable placement shown should be taken from config.
    return self;
}

- (IBAction)openAppFolder:(id)sender {
    // TODO: currently we hardcode according to the default folder
    // as I have no idea yet how to get the current running config dir
    //NSWorkspace.shared.selectFile(nil, inFileViewerRootedAtPath: "/Users/\(NSUserName())/Library/Application Support/Jellyfin/server")
    //NSString *configDir = [NSString stringWithFormat:@"%@/%@", NSHomeDirectory(), @"Library/Application Support/Jellyfin/server"];
    NSString *configDir =@"/Users/anthonylavado/Library/Application Support/jellyfin/server/";
    NSURL *folderURL = [NSURL fileURLWithPath: configDir];
    [[NSWorkspace sharedWorkspace] openURL:folderURL];
   
}

@end

//
//  www-main.m
//  www
//
//  Created by Juan Ferrer on 11/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    //Use device app delegate
    int retVal;
    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad){
        retVal = UIApplicationMain(argc, argv, nil, @"wwwAppDelegate_iPad");
    } else {
        retVal = UIApplicationMain(argc, argv, nil, @"wwwAppDelegate_iPhone");
    }
    [pool release];
    return retVal;
}

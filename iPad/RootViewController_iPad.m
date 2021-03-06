//
//  RootViewController_iPad.m
//  www
//
//  Created by Juan Ferrer on 11/14/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "RootViewController_iPad.h"


@implementation RootViewController_iPad


//// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
//    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
//        // Custom initialization
//    }
//    return self;
//}


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
    [super loadView];
    
    self.title = @"iPad";
    //Setup the left and right view controllers
    UITableViewController *leftController = [[UITableViewController alloc] init];
    UIViewController *rightController = [[UIViewController alloc] init];
    rightController.view = [[MKMapView alloc] init];
    
    //Add both view controllers to splitview controller
    self.viewControllers = [[NSArray alloc] initWithObjects:leftController, rightController, nil];
    [leftController release];
    [rightController release];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end

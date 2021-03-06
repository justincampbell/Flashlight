//
//  PluginCellView.m
//  Flashlight
//
//  Created by Nate Parrott on 11/3/14.
//
//

#import "PluginCellView.h"
#import "PluginModel.h"
#import "PluginListController.h"
#import <QuartzCore/QuartzCore.h>

@implementation PluginCellView

- (PluginModel *)plugin {
    return self.objectValue;
}

- (void)setObjectValue:(id)objectValue {
    [super setObjectValue:objectValue];
    
    [CATransaction begin];
    [CATransaction setValue:(id)kCFBooleanTrue forKey:kCATransactionDisableActions];
    self.switchControl.on = [self plugin].installed;
    [CATransaction commit];
    
    [self.switchControl setEnabled:![self plugin].installing];
}

- (IBAction)toggleInstalled:(id)sender {
    if ([self plugin].installed) {
        [self.listController uninstallPlugin:[self plugin]];
    } else {
        [self.listController installPlugin:[self plugin]];
    }
}

@end

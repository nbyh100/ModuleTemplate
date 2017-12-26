//
//  IExampleUIFactory.h
//  ModuleTemplate
//

#import <Foundation/Foundation.h>

@class UIViewController;

@protocol IExampleUIFactory <NSObject>

- (UIViewController *)exampleViewController;

@end

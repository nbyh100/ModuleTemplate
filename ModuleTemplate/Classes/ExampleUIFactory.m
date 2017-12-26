//
//  ExampleUIFactory.m
//  ModuleTemplate
//

#import "ExampleUIFactory.h"
#import <CApplication/CApplication.h>
#import "IExampleUIFactory.h"
#import "ExampleViewController.h"

@interface ExampleUIFactory ()<IExampleUIFactory>
@end

@implementation ExampleUIFactory

CExportModule(IExampleUIFactory)

- (UIViewController *)exampleViewController {
    return [ExampleViewController new];
}

@end

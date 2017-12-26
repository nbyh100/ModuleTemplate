//
//  ViewController.m
//  ModuleTemplateDevelop
//
//  Created by 张九州 on 2017/12/26.
//  Copyright © 2017年 张九州. All rights reserved.
//

#import "ViewController.h"
#import <CApplication/CModuleManager.h>
#import <ModuleTemplate/IExampleUIFactory.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"Application";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"Entry %ld", (long)indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *exampleViewController = [CModule(IExampleUIFactory) exampleViewController];
    [self.navigationController pushViewController:exampleViewController animated:YES];
}

@end

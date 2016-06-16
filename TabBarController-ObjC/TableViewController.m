//
//  TableViewController.m
//  TabBarController-ObjC
//
//  Created by Alistair Cooper on 5/2/16.
//  Copyright © 2016 Alistair Cooper. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = @"https://s3-us-west-2.amazonaws.com/iosassignment4/favfilmcomposers.csv";
    
    NSURL *url = [NSURL URLWithString:path];
    
    NSString *amazon = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    
    NSArray *itemArray = [amazon componentsSeparatedByString:@","];
    
    self.items = [itemArray copy];
    
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
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.items count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.vcDetail = [[DetailViewController alloc] initWithNibName:nil bundle:nil];
    self.vcDetail.title = [self.items objectAtIndex:indexPath.row];
    
    // Get composer name from cell
    NSString *name = [self.items objectAtIndex:indexPath.row];
    
    // Get composer imdb url for detail view
    self.vcDetail.url = [self makeComposerUrl:name];
    
    [self.navigationController pushViewController:self.vcDetail animated:YES];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
    // Configure the cell
    
    cell.textLabel.text = [self.items objectAtIndex:indexPath.row];
    
    return cell;
}

-(NSString *)makeComposerUrl: (NSString *)name;
{
    NSString *url;

    if ([name isEqualToString:@"Harry Gregson Williams"]) {
        
        url = @"http://www.imdb.com/name/nm0004581/?ref_=nv_sr_1";
    } else if ([name isEqualToString:@"Alexandre DeSplat"]) {
        
        url = @"http://www.imdb.com/name/nm0006035/?ref_=nv_sr_1";
    } else if ([name isEqualToString:@"John Williams"]) {
        
        url = @"http://www.imdb.com/name/nm0002354/?ref_=nv_sr_1";
    } else if ([name isEqualToString:@"Cliff Martinez"]) {
        
        url = @"http://www.imdb.com/name/nm0553498/?ref_=nv_sr_1";
    } else if ([name isEqualToString:@"John Powell"]) {
        
        url = @"http://www.imdb.com/name/nm0694173/?ref_=fn_al_nm_1";
    } else if ([name isEqualToString:@"James Newton Howard"]) {
        
        url = @"http://www.imdb.com/name/nm0006133/?ref_=nv_sr_1";
    } else if ([name isEqualToString:@"Danny Elfman"]) {
        
        url = @"http://www.imdb.com/name/nm0000384/?ref_=nv_sr_1";
    } else if ([name isEqualToString:@"Bernard Hermann"]) {
        
        url = @"http://www.imdb.com/name/nm0002136/?ref_=nv_sr_1";
    } else if ([name isEqualToString:@"Thomas Newman"]) {
        
        url = @"http://www.imdb.com/name/nm0002353/?ref_=nv_sr_1";
    }
    
    return url;
    
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

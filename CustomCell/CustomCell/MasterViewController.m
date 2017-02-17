//
//  MasterViewControllerTableViewController.m
//  CustomCell
//
//  Created by HanYoungsoo on 2017. 2. 12..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "MasterViewController.h"
#import "CustomCell.h"

@interface MasterViewController ()

@property (nonatomic) NSDictionary *itemList;
@property (nonatomic) NSDictionary *itemList2;
@property (nonatomic) NSDictionary *itemList3;
@property (nonatomic) NSDictionary *itemList4;
@property (nonatomic) NSDictionary *itemList5;
@property (nonatomic) NSDictionary *itemList6;
@property (nonatomic) NSDictionary *itemList7;
@property (nonatomic) NSDictionary *itemList8;
@property (nonatomic) NSDictionary *itemList9;
@property (nonatomic) NSDictionary *itemList10;
@property (nonatomic) NSDictionary *itemList11;
@property (nonatomic) NSDictionary *itemList12;
@property (nonatomic) NSDictionary *itemList13;

@property (nonatomic) NSArray *itemLists;
@property (weak, nonatomic)CustomCell *customCell;

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.itemList = @{@"name":@"사과",@"image":@"apple.jpeg", @"amount":@"6", @"value":@"3000"};
    self.itemList2=@{@"name":@"블루베리",@"image":@"blueberry.jpg",@"amount":@"10",@"value":@"30000원"};
    self.itemList3=@{@"name":@"당근",@"image":@"carrot.jpg",@"amount":@"13",@"value":@"5000원"};
    self.itemList4=@{@"name":@"체리",@"image":@"cherry.png",@"amount":@"1",@"value":@"2000원"};
    self.itemList5=@{@"name":@"포도",@"image":@"grape.jpg",@"amount":@"13",@"value":@"1000원"};
    self.itemList6=@{@"name":@"키위",@"image":@"kiwi.png",@"amount":@"2",@"value":@"15000원"};
    self.itemList7=@{@"name":@"레몬",@"image":@"lemon.png",@"amount":@"3",@"value":@"6000원"};
    self.itemList8=@{@"name":@"라임",@"image":@"lime.jpg",@"amount":@"4",@"value":@"4000원"};
    self.itemList9=@{@"name":@"고기",@"image":@"meat.jpg",@"amount":@"5",@"value":@"2000원"};
    self.itemList10=@{@"name":@"딸기",@"image":@"strawberry.jpg",@"amount":@"7",@"value":@"8000원"};
    self.itemList11=@{@"name":@"토마토",@"image":@"tomato.png",@"amount":@"30",@"value":@"3000원"};
    self.itemList12=@{@"name":@"야채",@"image":@"vegetable.jpg",@"amount":@"40",@"value":@"7000원"};
    self.itemList13=@{@"name":@"멜론",@"image":@"watermelon.png",@"amount":@"5",@"value":@"10000원"};
    
    _itemLists = @[_itemList,_itemList2,_itemList3,_itemList4,_itemList5,_itemList6,_itemList7,_itemList8,_itemList9,_itemList10,_itemList11,_itemList12,_itemList13];
    
    UIImageView *backGroundImg = [[UIImageView alloc] initWithFrame:CGRectMake(0,0, self.view.frame.size.width, self.view.frame.size.height)];
    
    backGroundImg.image = [UIImage imageNamed:@"background.jpg"];
    
    self.tableView.backgroundView = backGroundImg;
    self.tableView.contentMode = UIViewContentModeScaleAspectFill;
    
    [self.tableView.backgroundView setAlpha:0.3];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.itemLists.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[CustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    cell.backgroundColor = [UIColor clearColor];
    NSDictionary *dicTemp = self.itemLists[indexPath.row];

    cell.nameLabel.text = dicTemp[@"name"];
    cell.amountLabel.text = dicTemp[@"amount"];
    cell.valueLabel.text = dicTemp[@"value"];
    cell.imgView.image = [UIImage imageNamed:dicTemp[@"image"]];
    
    return cell;
}


@end

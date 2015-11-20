//
//  ViewController.m
//  RGBApp
//
//  Created by Aditya Narayan on 11/20/15.
//  Copyright © 2015 turntotech.io. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *redHexValue;
@property (strong, nonatomic) IBOutlet UILabel *greenHexValue;
@property (strong, nonatomic) IBOutlet UILabel *blueHexValue;
@property (strong, nonatomic) IBOutlet UILabel *alphaHexValue;
@property (strong, nonatomic) IBOutlet UIButton *colorDisplay;
@property (strong, nonatomic) NSMutableArray *colorValues;

@end

@implementation ViewController

- (IBAction)sliderValueChanged:(UISlider *)sender {
  
  
  NSLog(@"%lu has value %f aka %@",sender.tag,sender.value,[NSString stringWithFormat:@"%lX",(NSUInteger)sender.value]);
  switch (sender.tag) {
    case 0:
      self.redHexValue.text = [NSString stringWithFormat:@"%2lX",(NSUInteger)sender.value];
      [self.colorValues replaceObjectAtIndex:0 withObject:[NSNumber numberWithFloat:sender.value / 255.0f]];
      break;
    case 1:
      self.greenHexValue.text = [NSString stringWithFormat:@"%2lX",(NSUInteger)sender.value];
      [self.colorValues replaceObjectAtIndex:1 withObject:[NSNumber numberWithFloat:sender.value / 255.0f]];
      break;
    case 2:
      self.blueHexValue.text = [NSString stringWithFormat:@"%2lX",(NSUInteger)sender.value];
      [self.colorValues replaceObjectAtIndex:2 withObject:[NSNumber numberWithFloat:sender.value / 255.0f]];
      break;
    case 3:
      self.alphaHexValue.text = [NSString stringWithFormat:@"%2lX",(NSUInteger)sender.value];
      [self.colorValues replaceObjectAtIndex:3 withObject:[NSNumber numberWithFloat:sender.value / 255.0f]];
      break;
    default:
      break;
  }
  self.colorDisplay.backgroundColor = [UIColor colorWithRed:[self.colorValues[0] floatValue] green:[self.colorValues[1] floatValue] blue:[self.colorValues[2] floatValue] alpha:[self.colorValues[3] floatValue]];
  
}




- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.colorValues = [[NSMutableArray alloc] initWithObjects:[NSNumber numberWithFloat:0],[NSNumber numberWithFloat:0],[NSNumber numberWithFloat:0],[NSNumber numberWithFloat:1], nil];
  self.colorDisplay.backgroundColor = [UIColor colorWithRed:[self.colorValues[0] floatValue] green:[self.colorValues[1] floatValue] blue:[self.colorValues[2] floatValue] alpha:[self.colorValues[3] floatValue]];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end

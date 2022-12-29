//
//  ViewController.m
//  Calculator
//
//  Created by Adham Samer on 28/12/2022.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *subtitleTxt;
@property (weak, nonatomic) IBOutlet UILabel *resultlabel;
@property NSInteger firstNum;
@property NSInteger secondNum;
@property int opr;
@property long res;


@end

@implementation ViewController
-(IBAction)buttons:(id)sender{
    switch ([sender tag]) {
        case 0:
            _resultlabel.text =[_resultlabel.text stringByAppendingString:@"0"] ;
            break;
        case 1:
            _resultlabel.text =[_resultlabel.text stringByAppendingString:@"1"] ;
            break;
        case 2:
            _resultlabel.text =[_resultlabel.text stringByAppendingString:@"2"] ;
            break;
        case 3:
            _resultlabel.text =[_resultlabel.text stringByAppendingString:@"3"] ;
            break;
        case 4:
            _resultlabel.text =[_resultlabel.text stringByAppendingString:@"4"] ;
            break;
        case 5:
            _resultlabel.text =[_resultlabel.text stringByAppendingString:@"5"] ;
            break;
        case 6:
            _resultlabel.text =[_resultlabel.text stringByAppendingString:@"6"] ;
            break;
        case 7:
            _resultlabel.text =[_resultlabel.text stringByAppendingString:@"7"] ;
            break;
        case 8:
            _resultlabel.text =[_resultlabel.text stringByAppendingString:@"8"] ;
            break;
        case 9:
            _resultlabel.text =[_resultlabel.text stringByAppendingString:@"9"] ;
            break;
        default:
            break;
    }
}
- (IBAction)operationsBtns:(id)sender {
//    NSArray *nums;
//    int res = 0;
    switch([sender tag]){
        case 10:
            _subtitleTxt.text = [_resultlabel.text stringByAppendingString:@"+"];
            _firstNum +=[_resultlabel.text integerValue];
            _opr = 1;
            _resultlabel.text = @"";
            break;
        case 20:
            _subtitleTxt.text = [_resultlabel.text stringByAppendingString:@"-"];
            _firstNum -=[_resultlabel.text integerValue];
            _opr = 2;
            _resultlabel.text = @"";
            break;
        case 30:
            _subtitleTxt.text = [_resultlabel.text stringByAppendingString:@"*"];
            _firstNum *=[_resultlabel.text integerValue];
            _opr = 3;
            _resultlabel.text = @"";
            break;
        case 40:
            _subtitleTxt.text = [_resultlabel.text stringByAppendingString:@"/"];
            _firstNum /=[_resultlabel.text integerValue];
            _opr = 4;
            _resultlabel.text = @"";
            break;
    }
}
- (IBAction)equalBtn:(id)sender {
    switch(_opr){
        case 1:
            _subtitleTxt.text = [_subtitleTxt.text stringByAppendingFormat:@"%@",_resultlabel.text];
            _secondNum = [_resultlabel.text integerValue];
            _res = _firstNum + _secondNum;
            _resultlabel.text = [NSString stringWithFormat:@"%ld",_res];
            break;
        case 2:
            _subtitleTxt.text = [_subtitleTxt.text stringByAppendingFormat:@"%@",_resultlabel.text];
            _secondNum = [_resultlabel.text integerValue];
            _res = _firstNum - _secondNum;
            _resultlabel.text = [NSString stringWithFormat:@"%ld",_res];
            break;
        case 3:
            _subtitleTxt.text = [_subtitleTxt.text stringByAppendingFormat:@"%@",_resultlabel.text];
            _secondNum = [_resultlabel.text integerValue];
            _res = _firstNum * _secondNum;
            _resultlabel.text = [NSString stringWithFormat:@"%ld",_res];
            break;
        case 4:
            _subtitleTxt.text = [_subtitleTxt.text stringByAppendingFormat:@"%@",_resultlabel.text];
            _secondNum = [_resultlabel.text integerValue];
            _res = _firstNum / _secondNum;
            _resultlabel.text = [NSString stringWithFormat:@"%ld",_res];
            break;
    }
}
- (IBAction)deleteBtn:(id)sender {
    if ([_resultlabel.text length] > 0) {
        _resultlabel.text= [_resultlabel.text substringToIndex:[_resultlabel.text length] - 1];
    }else{
        _resultlabel.text = @"0";
    }
    }
- (IBAction)clrTxt:(id)sender {
    _resultlabel.text =@"";
    _subtitleTxt.text =@"";
    _firstNum=0;
    _secondNum=0;
    _res=0;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end

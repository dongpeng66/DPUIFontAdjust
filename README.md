# DPUIFontAdjust
#使用
第一步，导入
#import "UIFont+DpRunTime.h"
第二部，
    UILabel *la=[[UILabel alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 100)];
    la.textAlignment=NSTextAlignmentLeft;
    la.textColor=[UIColor whiteColor];
    la.backgroundColor=[UIColor grayColor];
    //systemFontOfSize方法字体的适配
    la.font=[UIFont systemFontOfSize:16];
    //boldSystemFontOfSize方法的字体适配
//    la.font=[UIFont boldSystemFontOfSize:16];
    la.text=@"字体大小适配字体大小适配字体大小适配字体大小适配";
    [self.view addSubview:la];
    
    

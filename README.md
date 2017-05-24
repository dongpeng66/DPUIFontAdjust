# DPUIFontAdjust
#使用</br> 
第一步，导入</br> 
#import "UIFont+DpRunTime.h"</br> 
第二部，</br> 
    UILabel *la=[[UILabel alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 100)];</br> 
    la.textAlignment=NSTextAlignmentLeft;</br> 
    la.textColor=[UIColor whiteColor];</br> 
    la.backgroundColor=[UIColor grayColor];</br> 
    //systemFontOfSize方法字体的适配</br> 
    la.font=[UIFont systemFontOfSize:16];</br> 
    //boldSystemFontOfSize方法的字体适配</br> 
//    la.font=[UIFont boldSystemFontOfSize:16];</br> 
    la.text=@"字体大小适配字体大小适配字体大小适配字体大小适配";</br> 
    [self.view addSubview:la];</br> 
    
    

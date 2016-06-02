# CustomAlertView-demo
自定义UIAlertController的字体颜色大小
使用KVC的方式改变UIAlertController的样式

UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"标题" message:@"内容" preferredStyle:UIAlertControllerStyleAlert];

UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];

//Add image 这里可以给button添加图片

UIImage *accessoryImage = [UIImage imageNamed:@"selectRDImag.png"];

accessoryImage = [accessoryImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

[cancelAction setValue:accessoryImage forKey:@"image"];

//设置cancelAction的title颜色

[cancelAction setValue:[UIColor lightGrayColor] forKey:@"titleTextColor"];

//设置cancelAction的title的对齐方式

[cancelAction setValue:[NSNumber numberWithInteger:NSTextAlignmentLeft] forKey:@"titleTextAlignment"];

[alertController addAction:cancelAction];

UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];

//设置okAction的title颜色

[okAction setValue:[UIColor greenColor] forKey:@"titleTextColor"];

[alertController addAction:okAction];


//Custom Title,使用富文本来改变title的字体大小

NSMutableAttributedString *hogan = [[NSMutableAttributedString alloc] initWithString:@"Presenting the Hulk Hogan!"];

[hogan addAttribute:NSFontAttributeName

value:[UIFont systemFontOfSize:20]

range:NSMakeRange(13, 11)];

[alertController setValue:hogan forKey:@"attributedTitle"];

NSMutableAttributedString *hogan1 = [[NSMutableAttributedString alloc] initWithString:@"hjasdghjdfsgkfdghfdgsgdsfgdsfg"];

[hogan1 addAttribute:NSFontAttributeName

value:[UIFont systemFontOfSize:20]

range:NSMakeRange(13, 11)];

[alertController setValue:hogan1 forKey:@"attributedMessage"];

[self presentViewController:alertController animated:YES completion:nil];

最终效果：

http://huanghaiyan.96.lt/wp-content/uploads/2016/05/customAlert.png

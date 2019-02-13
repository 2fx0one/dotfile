#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool { 
    //判断参数, 如果参数不对, 打印使用方法      
    if(argc < 2) {
        printf("Usage: %s [word to translate]\n", argv[0]);
        printf("示例: \n%s apple\n", argv[0]);
        return -1;
        }
        //获取需要查找的单词      
        NSString * search = [NSString stringWithCString: argv[1] encoding: NSUTF8StringEncoding]; 
        //通过CoreServices查找单词的翻译                 
        CFStringRef def =  DCSCopyTextDefinition(NULL,(CFStringRef)search,CFRangeMake(0, [search length]));  
        //输出结果 
        NSString * output = [NSString stringWithFormat: @"Definition of <%@>:%@\n", search, (NSString *)def];                   
        printf("%s", [output UTF8String]);
    }
    return 0;
}

// 编译使用 clang dict.m -o dict -framework CoreServices -framework Foundation -O2

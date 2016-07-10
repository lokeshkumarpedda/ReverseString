#import <Foundation/Foundation.h>

int main(int argc, const char* argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n,i=0;
    scanf("%d",&n);
    while(i<n){
    	char s[30];
    	scanf("%s",s);
    	NSString *str=[NSString stringWithUTF8String: s];
    	NSMutableString *reverse=[[NSMutableString alloc]init];
    	int len=[str length];
    	while(len){
    		len=len-1;
    		NSString *strsub=[str substringWithRange:NSMakeRange(len,1)];
    		[reverse appendString: strsub];
    		}
    	printf("%@\n",reverse);
    i=i+1;
    }
    [pool drain];
    return 0;
}

#include<stdio.h>

int birth_interval = 2; // 每两年生一头
int single_life = 5;    // 一头牛活五年
int count = 0;          // 总头数，初始为0

void a_new_cow(int out_time) // 新生一头牛，out_time 是题设中的n年还剩余的年头
{
    count++;                // 增加总头数
    int in_time;            // 新生牛的年龄，在for循环中初始化
    for(in_time = 1; in_time <= single_life && out_time >= 1; in_time++ && out_time--) {
                            // 新生牛年龄为1，年龄小于寿命并且n年还有剩余，则进行循环
        if(0 == out_time) { // n年用完时，退出
            return ;
        }
        if(5 == in_time) {  // 此牛阳寿已尽
            count--;
            return ;
        }
        if(0 == in_time%birth_interval) {    // 此牛该生了
            a_new_cow(out_time);    // 递归，同时告诉她世界进行到哪了
        }
    }
}
int main(void) {
    int n = -1;
    printf("n = ");
    scanf("%d", &n);
    while(0 > n) {
        printf("wrong n, n shoud greater than 0, n = ");
        scanf("%d", &n);
    }
    // 出现了一头没妈的牛，买回来的。
    a_new_cow(n);
    printf("%d years after, he has %d cow.\n", n, count);

    return 0;
}

#include 
#include 
#include 
 
using namespace std;
 
int main(int argc, char** argv)
{
    string key, value;
    int num;
    
    //个数统计
    mapint> count_stat;
    mapint>::iterator it_count_stat;
    
    //读入数据并插入map
    while(cin >> key >> value >> num)
    {
        string tmp_key = key + "/t" + value;
    
        //插入数据
        it_count_stat = count_stat.find(tmp_key);
        if(it_count_stat != count_stat.end())
        {
            (it_count_stat->second)++;
        }
        else
        {
            count_stat.insert(make_pair(tmp_key, 1));
        }
    }
 
    //输出统计结果
    for(it_count_stat = count_stat.begin(); it_count_stat != count_stat.end(); it_count_stat++)
    {
        cout<first<<"/t"<second<
    }
 
    return 0;
}

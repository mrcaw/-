#ifndef USER_TWO_PASS_H
#define USER_TWO_PASS_H

#define MAX_REGIONS 100
// 连通域特征结构体
typedef struct {
    int label;
    volatile int size;
    volatile int total_brightness;
    volatile int average_brightness;
    int min_brightness;
    int max_brightness;
    int centroid_x;
    int centroid_y;
    int perimeter;
    int width;
    int height;
    float angle;
    float mile_max;
    float mile_min;
} RegionFeature;

// 连通域分析结果结构体
typedef struct {
    int labels[hight_use][width_use];
    RegionFeature features[MAX_REGIONS];
    int region_count;
} ConnectedRegions;        // 区域总数

static int find(int x, int parent[]);
static void unionNodes(int x, int y, int parent[]);
int Two_Pass_With_Features(unsigned char B_Image[hight_use][width_use],unsigned char User_Image[hight_use][width_use],ConnectedRegions *g_result);
void Free_ConnectedRegions(ConnectedRegions* regions);
extern ConnectedRegions global_result;
extern ConnectedRegions global_result_1;
#endif

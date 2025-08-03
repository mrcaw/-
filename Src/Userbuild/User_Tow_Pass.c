#include "include.h"


#define MAX_LABELS 1000
ConnectedRegions* result;
RegionFeature f;


// 全局结果存储
ConnectedRegions global_result;
ConnectedRegions global_result_1;
// 并查集操作
static int find(int x, int parent[]) {
    while (parent[x] != x) {
        parent[x] = parent[parent[x]];
        x = parent[x];
    }
    return x;
}

static void unionNodes(int x, int y, int parent[]) {
    int rootX = find(x, parent);
    int rootY = find(y, parent);
    if (rootX != rootY) {
        parent[rootY] = (rootX < rootY) ? rootX : rootY;
    }
}

int Two_Pass_With_Features(
    unsigned char B_Image[hight_use][width_use],
    unsigned char User_Image[hight_use][width_use],ConnectedRegions *g_result
) {
    // 初始化全局结果
    memset(g_result->labels, 0, sizeof(g_result->labels));
    int parent[MAX_LABELS + 1] = {0};
    int label_counter = 1;

    /*************** 第一遍扫描：标签分配 ***************/
    for (int i = 0; i < hight_use; ++i) {
        for (int j = 0; j < width_use; ++j) {
            if (B_Image[i][j] != 0) {
                int up = (i > 0) ? g_result->labels[i-1][j] : 0;
                int left = (j > 0) ? g_result->labels[i][j-1] : 0;

                if (up == 0 && left == 0) {
                    if (label_counter > MAX_LABELS) return -1;
                    g_result->labels[i][j] = label_counter;
                    parent[label_counter] = label_counter;
                    label_counter++;
                }
                else if (up && left) {
                    int root_up = find(up, parent);
                    int root_left = find(left, parent);
                    g_result->labels[i][j] = (root_up < root_left) ? root_up : root_left;
                    unionNodes(root_up, root_left, parent);
                }
                else {
                    g_result->labels[i][j] = up ? up : left;
                }
            }
        }
    }

    /*************** 第二遍扫描：标签统一 ***************/
    for (int i = 0; i < hight_use; ++i) {
        for (int j = 0; j < width_use; ++j) {
            if (g_result->labels[i][j] != 0) {
                g_result->labels[i][j] = find(g_result->labels[i][j], parent);
            }
        }
    }

    /*************** 特征提取 ***************/
    struct TempFeature {
        volatile int size;
        volatile int total_brightness;
        int min_brightness;
        int max_brightness;
        int sum_x;
        int sum_y;
        int perimeter;
        int max_x;
        int min_x;
        int max_y;
        int min_y;
    } temp_features[MAX_LABELS + 1] = {{{0}}};

    // 特征统计（代码同前，保持不变）
    // 显式初始化临时特征数组
    for(int i=0;i<=MAX_LABELS+1;i++)
    {
        temp_features[i].size=0;
    }

    // 统计特征值
    for (int i = 0; i < hight_use; ++i) {
    for (int j = 0; j < width_use; ++j) {
       int label = g_result->labels[i][j];
       if (label != 0)
       {
           struct TempFeature* tf = &temp_features[label];
           int brightness = (int)User_Image[i][j]; // 使用原始图像亮度

           // 初始化新区域
           if (tf->size == 0) {
               tf->min_brightness = 0xFF;
               tf->max_brightness = 0x00;
               tf->min_x = j;      // 初始化坐标
               tf->max_x = j;
               tf->min_y = i;
               tf->max_y = i;
           }
           if (brightness > tf->max_brightness) tf->max_brightness = brightness;
           // 更新统计信息
           tf->size=tf->size+1;
           tf->sum_x += j;
           tf->sum_y += i;
           if (j < tf->min_x) tf->min_x = j;
           if (j > tf->max_x) tf->max_x = j;
           if (i < tf->min_y) tf->min_y = i;
           if (i > tf->max_y) tf->max_y = i;
       }
    }
    }

    /*************** 结果整理 ***************/
    g_result->region_count = 0;
    for (int i = 1; i < label_counter && g_result->region_count < MAX_REGIONS; ++i) {
        if (parent[i] == i) {
            struct TempFeature* src = &temp_features[i];
            if(src->size!=0)
            {
                g_result->features[i].size=src->size;
                g_result->features[i].centroid_x = (float)src->sum_x / src->size;//中心点
                g_result->features[i].centroid_y = (float)src->sum_y / src->size;
                g_result->features[i].angle=-((float)g_result->features[i].centroid_x-47.0f)/47.0f*63.0f;
                g_result->features[i].width = src->max_x - src->min_x + 1;
                g_result->features[i].height = src->max_y - src->min_y + 1;
                g_result->features[i].max_brightness = src->max_brightness;
                g_result->region_count++; // 最后递增计数器
            }
        }
    }

    return 0; // 成功返回0，失败返回-1
}
/* 使用示例：
int main() {
    // 示例图像数据（需要实际初始化）
    unsigned char B_Image[hight_use][width_use] = {{0}};    // 二值图像
    unsigned char User_Image[hight_use][width_use] = {{0}}; // 原始灰度图像

    // 执行连通域分析
    ConnectedRegions* result = Two_Pass_With_Features(B_Image, User_Image);

    if (result && result->region_count > 0) {
        printf("发现 %d 个连通域\n", result->region_count);
        for (int i = 0; i < result->region_count; ++i) {
            RegionFeature f = result->features[i];
            printf("区域 %d:\n", f.label);
            printf("  大小: %d 像素\n", f.size);
            printf("  亮度范围: %d-%d\n", f.min_brightness, f.max_brightness);
            printf("  中心坐标: (%.1f, %.1f)\n", f.centroid_x, f.centroid_y);
            printf("  周长: %d\n", f.perimeter);
        }
    } else {
        printf("未找到有效连通域\n");
    }

    Free_ConnectedRegions(result);
    return 0;
}
*/

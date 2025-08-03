#include "include.h"

unsigned char User_Image[hight_use][width_use],User_Image_1[hight_use][width_use]; //不压缩图像 考虑是否压缩
int B_threshold=35;//二值化阈值 目前是固定是否采用（大津法或是均值法或是其他方法确定阈值）
unsigned char B_Image[hight_use][width_use],B_Image_1[hight_use][width_use]; //二值化图像
unsigned char S_Image[hight_use][width_use]; //边缘化图像
labels_typedef labels_struct[100];
int labels_count=0;
int labels_buffer[hight_use][width_use];
float Beacon_reliability,Beacon_reliability_1;
volatile int b_x,b_y,b_perimeter,b_max,b_min,size,tow_pass_flag,a_b;
int Rectangle_x[100],Rectangle_y[100],Rectangle_x1[100],Rectangle_y1[100];
volatile int Camera_photo_Flag=0;
int Camera_read_Flag=0;
int Turn_Flag_Last_Ture,Turn_Flag_Last;
int Photo_Mode_flag=0;
int Two_Camera_Flag=1;

void Get_Photo(void)
{
    if(Photo_Mode_flag==0)//前右
    {
        if (Camera_Flag == 2)//&&Beacon_count_1==0)&&Camera_Flag_AUX == 2
        {
            Camera_Flag=0;

            Camera_photo_Flag=0;
            for (int y = 0; y < IMAGEH/2 ; y++)
            {
                for (int x = 0; x < IMAGEW/2; x++)
                {
                    User_Image[y][x] = Image_Data[y*2][x*2];
                    if(User_Image[y][x]>=B_threshold)
                    {
                        B_Image[y][x]=0xFF;
                    }
                    else
                    {
                        B_Image[y][x]=0;
                    }
                }
            }
            tow_pass_flag=Two_Pass_With_Features(B_Image,User_Image,&global_result);
            Beacon_count=0;
            for(int i=1;i<=global_result.region_count;i++)
            {
                RegionFeature f = global_result.features[i];
                Beacon_Judge(f);
            }
            RegionFeature f = global_result.features[1];
            size=f.size;
            b_x=f.centroid_x;
            b_y=f.centroid_y;
            Camera_Flag=0;
        }
        if (Camera_Flag_AUX == 2)//&&Beacon_count_1==0)&&Camera_Flag_AUX == 2
        {
            Camera_photo_Flag=1;
            Camera_Flag_AUX=0;
            for (int y = 0; y < IMAGEH/2 ; y++)
            {
                for (int x = 0; x < IMAGEW/2; x++)
                {
                    User_Image_1[y][x] = Image_Data_AUX[y*2][x*2];
                    if(User_Image_1[y][x]>=B_threshold)
                    {
                        B_Image_1[y][x]=0xFF;
                    }
                    else
                    {
                        B_Image_1[y][x]=0;
                    }
                }
            }
            Two_Pass_With_Features(B_Image_1,User_Image_1,&global_result_1);
            Beacon_count_1=0;
            for(int i=1;i<=global_result_1.region_count;i++)
            {
                RegionFeature f = global_result_1.features[i];
                Beacon_Judge(f);
            }
            if(Beacon_count_1!=0)
            {
                if(Two_Camera_Flag==0)
                {
                    Task_Turn=0;
                }
                else
                {
                    Task_Turn=1;
                }
            }
            else
            {
                Task_Turn=0;
            }
            //Turn_Flag_Last=Task_Turn;
        }
    }
    else if(Photo_Mode_flag==1)
    {
        if (Camera_Flag == 2)
        {
            Camera_Flag=0;
            Camera_Flag_AUX=0;
            Camera_photo_Flag=0;
            for (int y = 0; y < IMAGEH/2 ; y++)
            {
                for (int x = 0; x < IMAGEW/2; x++)
                {
                    User_Image[y][x] = Image_Data[y*2][x*2];
                    if(User_Image[y][x]>=B_threshold)
                    {
                        B_Image[y][x]=0xFF;
                    }
                    else
                    {
                        B_Image[y][x]=0;
                    }
                }
            }
            tow_pass_flag=Two_Pass_With_Features(B_Image,User_Image,&global_result);
            Beacon_count=0;
            Beacon_count_1=0;
            for(int i=1;i<=global_result.region_count;i++)
            {
                RegionFeature f = global_result.features[i];
                Beacon_Judge(f);
            }
            RegionFeature f = global_result.features[1];
            size=f.size;
            b_x=f.centroid_x;
            b_y=f.centroid_y;
            Camera_Flag=0;
            Camera_photo_Flag=1;
            for (int y = 0; y < IMAGEH/2 ; y++)
            {
                for (int x = 0; x < IMAGEW/2; x++)
                {
                    User_Image_1[y][x] = Image_Data_AUX[y*2][x*2];
                    if(User_Image_1[y][x]>=B_threshold)
                    {
                        B_Image_1[y][x]=0xFF;
                    }
                    else
                    {
                        B_Image_1[y][x]=0;
                    }
                }
            }
            Two_Pass_With_Features(B_Image_1,User_Image_1,&global_result_1);
            for(int i=1;i<=global_result_1.region_count;i++)
            {
                RegionFeature f = global_result_1.features[i];
                Beacon_Judge(f);
            }

        }
    }

}


void lq_sobel(unsigned char imageIn[hight_use][width_use], unsigned char imageOut[hight_use][width_use],unsigned char Threshold) //四向边缘检测
{
    //* 卷积核大小 //
    short KERNEL_SIZE = 3;
    short xStart = KERNEL_SIZE / 2;
    short xEnd = width_use - KERNEL_SIZE / 2;
    short yStart = KERNEL_SIZE / 2;
    short yEnd = width_use - KERNEL_SIZE / 2;
    short i, j, k;
    short temp[4];
    for (i = yStart; i < yEnd; i++) {
        for (j = xStart; j < xEnd; j++) {
            // 计算不同方向梯度幅值  //
            temp[0] = -(short) imageIn[i - 1][j - 1] + (short) imageIn[i - 1][j + 1]     //{{-1, 0, 1},
                      - (short) imageIn[i][j - 1] + (short) imageIn[i][j + 1]        // {-1, 0, 1},
                      - (short) imageIn[i + 1][j - 1] + (short) imageIn[i + 1][j + 1];    // {-1, 0, 1}};

            temp[1] = -(short) imageIn[i - 1][j - 1] + (short) imageIn[i + 1][j - 1]     //{{-1, -1, -1},
                      - (short) imageIn[i - 1][j] + (short) imageIn[i + 1][j]       // { 0,  0,  0},
                      - (short) imageIn[i - 1][j + 1] + (short) imageIn[i + 1][j + 1];    // { 1,  1,  1}};

            temp[2] = -(short) imageIn[i - 1][j] + (short) imageIn[i][j - 1]       //  0, -1, -1
                      - (short) imageIn[i][j + 1] + (short) imageIn[i + 1][j]       //  1,  0, -1
                      - (short) imageIn[i - 1][j + 1] + (short) imageIn[i + 1][j - 1];    //  1,  1,  0

            temp[3] = -(short) imageIn[i - 1][j] + (short) imageIn[i][j + 1]       // -1, -1,  0
                      - (short) imageIn[i][j - 1] + (short) imageIn[i + 1][j]       // -1,  0,  1
                      - (short) imageIn[i - 1][j - 1] + (short) imageIn[i + 1][j + 1];    //  0,  1,  1

            temp[0] = abs(temp[0]);
            temp[1] = abs(temp[1]);
            temp[2] = abs(temp[2]);
            temp[3] = abs(temp[3]);

            // 找出梯度幅值最大值  //
            for (k = 1; k < 4; k++) {
                if (temp[0] < temp[k]) {
                    temp[0] = temp[k];
                }
            }

            if (temp[0] > Threshold) {
                imageOut[i][j] = 255;
            } else {
                imageOut[i][j] = 0;
            }
        }
    }
}

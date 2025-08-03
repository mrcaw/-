#ifndef USER_PHOTO_H
#define USER_PHOTO_H

#define width_use 94
#define hight_use 60


typedef struct
{
        int x_left;
        int y_left;
        int x_right;
        int y_right;
        int count;
}labels_typedef;

void Get_Photo(void);
void lq_sobel(unsigned char imageIn[hight_use][width_use], unsigned char imageOut[hight_use][width_use],
              unsigned char Threshold);
//int Two_Pass(unsigned char imageIn[hight_use][width_use], int labels_buf[hight_use][width_use]);
//int Seed_Filling(unsigned char imageIn[hight_use][width_use],int labels_buf[hight_use][width_use]);
//
//static int find(int x, int parent[]) ;
//static void unionNodes(int x, int y, int parent[]) ;
extern unsigned char User_Image[hight_use][width_use],User_Image_1[hight_use][width_use];
extern unsigned char B_Image[hight_use][width_use],B_Image_1[hight_use][width_use];
extern int B_threshold;
extern unsigned char S_Image[hight_use][width_use];
extern int labels_count;
extern int labels_buffer[hight_use][width_use];
extern volatile int b_x,b_y,b_perimeter,b_max,b_min,size,tow_pass_flag,a_b;
extern float Beacon_reliability;
extern int Rectangle_x[100],Rectangle_y[100],Rectangle_x1[100],Rectangle_y1[100];
extern volatile int Camera_photo_Flag;
extern int Camera_read_Flag;
extern int Photo_Mode_flag;
extern int Two_Camera_Flag;
#endif

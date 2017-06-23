#include <iostream>
#include <opencv/cv.h>
#include <opencv/highgui.h>
#include <opencv2/video.hpp>
#include "opencv2/core/core.hpp"
#include "opencv2/nonfree/features2d.hpp"
#include "opencv2/imgproc/imgproc.hpp"

using namespace cv;
using namespace std;

int main()
{
    Mat img_1, img_2, img_keypoints_1;
    VideoCapture camera;
    camera.open(0);
    char a;
    int minHessian = 400;
    while(1){
        camera >> img_2;

        SurfFeatureDetector detector( minHessian );
        vector <KeyPoint> keypoints_1;
        detector.detect(img_2, keypoints_1);
        drawKeypoints(img_2, keypoints_1, img_keypoints_1, Scalar::all(-1), DrawMatchesFlags::DEFAULT );



        imshow("Janela_Teste", img_keypoints_1);

        a = waitKey(10);
        if(a == 'w'){
            img_1 = img_2;
            imshow("Imagem Referencia", img_1);
        }
    }

    /*
    int minHessian = 400;
    SurfFeatureDetector detector( minHessian );
    vector <KeyPoint> keypoints_1;
    detector.detect(img_1_keypoints_1);
    */

    return 0;
}


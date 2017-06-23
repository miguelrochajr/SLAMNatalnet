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
    Mat img_1, img_2, img_ref, img_keypoints_1, img_keypoints_2;
    VideoCapture camera;
    camera.open(0);
    char a;
    int minHessian = 400;

    SurfFeatureDetector detector( minHessian );
    SurfDescriptorExtractor extractor;

    while(1){
        camera >> img_2;

        vector <KeyPoint> keypoints_2;
        detector.detect(img_2, keypoints_2);
        drawKeypoints(img_2, keypoints_2, img_keypoints_2, Scalar::all(-1), DrawMatchesFlags::DEFAULT );

        imshow("Janela_Teste", img_keypoints_2);

        a = waitKey(10);
        if(a == 'w'){
            img_1 = img_2.clone();
            cout << "TESTE" << endl;
            break;
        }
    }

    vector <KeyPoint> keypoints_1;
    detector.detect( img_1, keypoints_1 );

    Mat descriptors_1;
    extractor.compute( img_1, keypoints_1, descriptors_1 );

    while(1){
        camera >> img_2;


        vector <KeyPoint> keypoints_2;
        detector.detect(img_2, keypoints_2);

        Mat descriptors_2;
        extractor.compute( img_2, keypoints_2, descriptors_2 );


        BFMatcher matcher(NORM_L2);
        vector< DMatch > matches;
        matcher.match( descriptors_1, descriptors_2, matches );


        Mat img_matches;
        drawMatches( img_1, keypoints_1, img_2, keypoints_2, matches, img_matches );
        imshow("Matches", img_matches );

        a = waitKey(10);
        if(a == 27){
            break;
        }

    }

    return 0;
}

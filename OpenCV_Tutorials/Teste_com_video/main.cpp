#include <iostream>
#include <opencv/cv.h>
#include <opencv/highgui.h>
#include <opencv2/video.hpp>

using namespace cv;

using namespace std;

int main()
{

    Mat img_teste;
    VideoCapture teste;
    teste.open(0);

    while(1){
        teste >> img_teste;
        imshow("Janela_Teste", img_teste);
        waitKey(10);
    }
    cout << "Hello World!" << endl;
    return 0;
}


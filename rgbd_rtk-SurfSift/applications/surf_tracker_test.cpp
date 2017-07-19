/*
 *  Software License Agreement (BSD License)
 *
 *  Copyright (c) 2016, Natalnet Laboratory for Perceptual Robotics
 *  All rights reserved.
 *  Redistribution and use in source and binary forms, with or without modification, are permitted provided
 *  that the following conditions are met:
 *
 *  1. Redistributions of source code must retain the above copyright notice, this list of conditions and
 *     the following disclaimer.
 *
 *  2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and
 *     the following disclaimer in the documentation and/or other materials provided with the distribution.
 *
 *  3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or
 *     promote products derived from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, *  INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 *  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 *  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 *  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 *  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
 *  USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>


#include <opencv/cv.h>
#include <opencv/highgui.h>
#include <opencv2/video.hpp>
#include "opencv2/core/core.hpp"
#include "opencv2/nonfree/features2d.hpp"
#include "opencv2/imgproc/imgproc.hpp"



#include <rgbd_loader.h>
#include <klt_tracker.h>
#include <common_types.h>

using namespace std;
using namespace cv;

void rastreia(vector<Mat> frames, Mat &img_matches, vector< vector<int> > &historico_rastro, vector< vector<Point> > &rastros);

void draw_last_track(Mat& img, const vector<Point2f> prev_pts, const vector<Point2f> curr_pts)
{
	for(size_t k = 0; k < curr_pts.size(); k++)
	{
		Point2i pt1, pt2;
		pt1.x = prev_pts[k].x;
		pt1.y = prev_pts[k].y;
		pt2.x = curr_pts[k].x;
		pt2.y = curr_pts[k].y;

		circle(img, pt1, 1, CV_RGB(0,0,255), 1);
		circle(img, pt2, 3, CV_RGB(0,255,0), 1);
		line(img, pt1, pt2, CV_RGB(0,255,0));
	}
}

void draw_tracks(Mat& img, const vector<Tracklet> tracklets)
{
	for(size_t i = 0; i < tracklets.size(); i++)
	{
		for(size_t j = 0; j < tracklets[i].pts2D_.size(); j++)
		{
			Point2i pt1;
			pt1.x = tracklets[i].pts2D_[j].x;
			pt1.y = tracklets[i].pts2D_[j].y;
			circle(img, pt1, 3, CV_RGB(0,255,0), 1);
			if(j > 0)
			{
				Point2i pt2;
				pt2.x = tracklets[i].pts2D_[j-1].x;
				pt2.y = tracklets[i].pts2D_[j-1].y;
				line(img, pt1, pt2, CV_RGB(0,255,0));
			}
		}
	}
}

int main(int argc, char **argv)
{
	string index_file_name;
	RGBDLoader loader;

	Mat frame, depth;

	if(argc != 2)
	{
		fprintf(stderr, "Usage: %s <index file>\n", argv[0]);
		exit(0);
	}

	index_file_name = argv[1];
	loader.processFile(index_file_name);

	bool teste = false;
	vector<Mat> frames;
	Mat img_matches;

	loader.getNextImage(frame, depth);
	frames.push_back(frame);

	vector< vector<int> > historico_rastro(frame.cols, vector<int>(frame.rows, -1));
  vector< vector<Point> > rastros;

	//Track points on each image
	for(int i = 0; i < loader.num_images_; i++)
	{
		if(frames.size()<=1){
			loader.getNextImage(frame, depth);
			frames.push_back(frame);

			continue;
		}

		rastreia(frames, img_matches, historico_rastro, rastros);

		//draw_last_track(frame, tracker.prev_pts_, tracker.curr_pts_);
		//draw_tracks(frame, tracker.tracklets_);

		imshow("SURF", img_matches);
		imshow("Depth view", depth);
		waitKey(0);
		char key = waitKey(15);
		if(key == 27 || key == 'q' || key == 'Q')
		{
			printf("Exiting.\n");
			break;
		}

		loader.getNextImage(frame, depth);
		frames.push_back(frame);

	}

	return 0;
}


void rastreia(vector<Mat> frames, Mat &img_matches, vector< vector<int> > &historico_rastro, vector< vector<Point> > &rastros){
	int i = frames.size();
	Mat img_1, img_2, img_ref, img_keypoints_1, img_keypoints_2;
	int minHessian = 1000;


	SurfFeatureDetector detector( minHessian );
	SurfDescriptorExtractor extractor;

	vector <KeyPoint> keypoints_1, keypoints_2;
	Mat descriptors_1, descriptors_2;

	detector.detect(frames[i-2], keypoints_1);
	extractor.compute(frames[i-2], keypoints_1, descriptors_1);

	detector.detect(frames[i-1], keypoints_2);
	extractor.compute(frames[i-1], keypoints_2, descriptors_2);

	BFMatcher matcher(NORM_L2);
	vector<DMatch> matches;

	matcher.match(descriptors_2, descriptors_1, matches);


	drawKeypoints(frames[i-2], keypoints_1, img_1);
	drawKeypoints(frames[i-1], keypoints_2, img_2);

	//drawMatches(img_1, keypoints_1, img_2, keypoints_2, matches, img_matches);
	Mat copia;
	img_2.copyTo(copia);  // copia = img2.clone()

	int i2, i1;
	for(int i=0; i<matches.size(); i++){
		if(i%10!=0){
			continue;
		}
		//circle(copia, keypoints_2[i].pt, 2, CV_RGB(0, 0, 255));
		i2 = matches[i].queryIdx;
		i1 = matches[i].trainIdx;
		circle(copia, keypoints_2[i2].pt, 2, CV_RGB(0, 0, 255));
		line(copia, keypoints_2[i2].pt, keypoints_1[i1].pt, CV_RGB(0, 255, 0));

	}

	img_matches = copia.clone();


	Point p1, p2;
	vector< vector<int> > aux;
	aux = historico_rastro;

  for(int i=0; i<matches.size(); i++){
		if(i%10!=0){
			continue;
		}
		i2 = matches[i].queryIdx;
		i1 = matches[i].trainIdx;

		p2 = keypoints_2[i2].pt;
		p1 = keypoints_1[i1].pt;


		if(historico_rastro[p1.x][p1.y] == -1){
			rastros.push_back(vector<Point>());
			(*(rastros.end()-1)).push_back(p1);
			(*(rastros.end()-1)).push_back(p2);
			aux[p2.x][p2.y] = rastros.size()-1;
		}
		else{
			rastros[historico_rastro[p1.x][p1.y]].push_back(p2);
			aux[p2.x][p2.y] = historico_rastro[p1.x][p1.y];
			aux[p1.x][p1.y] = -1;
		}

	}

	historico_rastro = aux;

	int somador = 0;
	for(int i = 0; i < historico_rastro.size(); i++){
		for(int j = 0; j < historico_rastro[0].size(); j++){
			if(historico_rastro[i][j] != -1){
				somador++;
				cout << rastros[historico_rastro[i][j]].size() << endl;
			}
		}
	}

	cout << endl << endl << "separacao" << endl << endl;
}

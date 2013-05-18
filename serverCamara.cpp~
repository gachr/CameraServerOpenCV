/* A simple server in the internet domain using TCP
   The port number is passed as an argument */
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <fcntl.h>
#include <termios.h>
#include <sys/sendfile.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <netinet/in.h>
#include <pthread.h>
#include "cv.h"
#include "highgui.h" 

using namespace cv;
using namespace std;

void error(const char *msg)
{
    perror(msg);
    exit(1);
}

int main(int argc, char *argv[])
{
     int sockfd, newsockfd, portno;
     socklen_t clilen;
     char buffer[500];//255];
     char bufferCS[255];
     struct sockaddr_in serv_addr, cli_addr;
     int n;
     int closeSocket;
     int fdfile;
     struct stat stat_buf;
     off_t offset = 0;

     CvCapture *capture = 0;
     Mat img3;
     Mat src, dst1, dst2;
     pthread_t th;

     int im2send;
     //////////

     sockfd = socket(AF_INET, SOCK_STREAM, 0);
     //sockfd = socket(AF_INET, SOCK_DGRAM, 0);
     if (sockfd < 0) 
        error("ERROR opening socket");
     bzero((char *) &serv_addr, sizeof(serv_addr));
     portno = 55000;//atoi(argv[1]);
     serv_addr.sin_family = AF_INET;
     serv_addr.sin_addr.s_addr = INADDR_ANY;
     serv_addr.sin_port = htons(portno);
     if (bind(sockfd, (struct sockaddr *) &serv_addr, sizeof(serv_addr)) < 0) { 
 	error("ERROR on binding");
	close(sockfd);
	exit(1);
     }
     listen(sockfd,1);
     clilen = sizeof(cli_addr);
     printf("Waiting for connections... \n");
     newsockfd = accept(sockfd, (struct sockaddr *) &cli_addr, &clilen);
     if (newsockfd < 0) {
	error("ERROR on accept");
	close(sockfd);
	exit(1);
     }
     printf("Connection established... \n");

     capture = cvCaptureFromCAM(0); // other options: CV_CAP_ANY, -1
     //cvSetCaptureProperty(capture, CV_CAP_PROP_FRAME_WIDTH, 120);
     //cvSetCaptureProperty(capture, CV_CAP_PROP_FRAME_HEIGHT, 100);
     ///////////
     vector<int> p;
     p.push_back(CV_IMWRITE_PNG_COMPRESSION);
     p.push_back(9);
     ///////////

     closeSocket = 0;
     im2send = 1;
     while (closeSocket == 0) {
		// get image from camera and save it
		img3 = cvQueryFrame(capture);
	     	cvtColor(img3, img3, CV_BGR2GRAY);
		pyrDown(img3, src, Size( img3.cols/2, img3.rows/2 ) );
	     	//pyrDown(src, dst1, Size( src.cols/2, src.rows/2 ) );
	     	if (!imwrite("/home/gachaconr/Desktop/gus.png",src,p)) { 
			printf("mat not saved!!!\n"); 
		} /*else {
			printf("mat saved!!!\n"); 	
		}*/
                //open image
	        fdfile = open("/home/gachaconr/Desktop/gus.png", O_RDONLY);
	        if (fdfile == -1) {
	           printf("Unable to open file\n");
	       	   close(sockfd); 
		   close(newsockfd);      
		   exit(1);
	        } /*else {
		   printf("File opened...\n");
	        }*/
	        //fstat(fdfile, &stat_buf);
		// send image
	        int totalbytes = 0;
		//int ijk = 1; 
		while (1) {
		    int bytes_read = read(fdfile, buffer, sizeof(buffer));
		    //totalbytes = totalbytes + bytes_read;
		    if (bytes_read == 0) {
			break;
		    }
		    //usleep(100000);
		    void *p = buffer;
		    while (bytes_read > 0) {
			int bytes_written = write(newsockfd, p, bytes_read);
			if (bytes_written != bytes_read) { //<= 0) {
			    printf("problem transmitting info\n");
			}
			totalbytes = totalbytes + bytes_written;
			bytes_read -= bytes_written;
			p += bytes_written;
		    }    
		    //ijk = ijk + 1;
		    usleep(25000);//50000);//100000);
		}
		printf("bytes sent = %d\n",totalbytes);

		    /*int bytes_read = read(fdfile, buffer, sizeof(buffer));
		    void *p = buffer;
		    if (bytes_read > 0) {
			int bytes_written = write(newsockfd, p, bytes_read);
			printf("bytes sent = %d\n",bytes_written);
		    }*/

                printf("Complete transfering file\n");	
		/*sentImage = 1;	
		bzero(buffer,sizeof(buffer));
		int bytes_read = sizeof(buffer);
		void *p = buffer;
		while (bytes_read > 0) {
		    int bytes_written = write(newsockfd, p, bytes_read);
	            if (bytes_written <= 0) {
			    // handle errors
		    }
		    bytes_read -= bytes_written;
		    p += bytes_written;
		}*/
	//////////////////////////////////////
        //usleep(900000);
	sleep(1);//2);
	bzero(buffer,sizeof(buffer));
	bzero(bufferCS,sizeof(bufferCS));
	n = recv(newsockfd,bufferCS,1,MSG_DONTWAIT);
	if (n > 0) {
		if (bufferCS[0] == 48){
			printf("Closing socket... \n");
			closeSocket = 1;
		}
	}
     }
     close(newsockfd);
     close(sockfd);
     return 0; 
}

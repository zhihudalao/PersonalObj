#include<netinet/in.h>   // sockaddr_in 
#include<sys/types.h>    // socket 
#include<sys/socket.h>   // socket 
#include<arpa/inet.h> 
#include<sys/ioctl.h> 
#include<unistd.h> 
#include<iostream> 
#include<string> 
#include<cstdlib> 
#include<cstdio>
#include<cstring> 
#include<pthread.h>

using namespace std;

#define BUFFER_SIZE 1024 

enum Type {
    HEART, OTHER
};
 
struct PACKET_HEAD { 
    Type type; 
    int length; 
}; 

void* send_heart(void* arg); 

class Client { 
    private: 
        struct sockaddr_in server_addr; 
        socklen_t server_addr_len;
        int fd; 
        
    public: 
        Client(string ip, int port);
        ~Client(); 
        void Connect(); 
        void Run(); 
        friend void* send_heart(void* arg);
}; 

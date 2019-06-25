#include<netinet/in.h>   // sockaddr_in 
#include<sys/types.h>    // socket 
#include<sys/socket.h>   // socket 
#include<arpa/inet.h> 
#include<unistd.h> 
#include<sys/select.h>   // select 
#include<sys/ioctl.h> 
#include<sys/time.h> 
#include<iostream> 
#include<vector> 
#include<map> 
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

void* heart_handler(void* arg);

class Server { 
    private: 
        struct sockaddr_in server_addr; 
        socklen_t server_addr_len; 
        int listen_fd; // 监听的fd 
        int max_fd; // 最大的fd 
        fd_set master_set; // 所有fd集合，包括监听fd和客户端fd   
        fd_set working_set; // 工作集合 
        struct timeval timeout; 
        map<int, pair<string, int> > mmap; // 记录连接的客户端fd--><ip, count> 
    public: 
        Server(int port); 
        ~Server(); 
        void Bind(); 
        void Listen(int queue_len = 20); 
        void Accept(); 
        void Run(); 
        void Recv(int nums); 
        friend void* heart_handler(void* arg); 
}; 


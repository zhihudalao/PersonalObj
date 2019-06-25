#include"heart_beat/client.h"

Client::Client(string ip, int port){ 
    bzero(&server_addr, sizeof(server_addr)); 
    server_addr.sin_family = AF_INET; 
    if(inet_pton(AF_INET, ip.c_str(), &server_addr.sin_addr) == 0) { 
        cout << "Server IP Address Error!"; 
        exit(1); 
    } 
    server_addr.sin_port = htons(port); 
    server_addr_len = sizeof(server_addr); // create socket 
    fd = socket(AF_INET, SOCK_STREAM, 0); 
    if(fd < 0) { 
        cout << "Create Socket Failed!"; 
        exit(1); 
    } 
} 

Client::~Client() { 
    close(fd); 
} 

void Client::Connect() { 
    cout << "Connecting......" << endl; 
    if(connect(fd, (struct sockaddr*)&server_addr, server_addr_len) < 0) { 
        cout << "Can not Connect to Server IP!"; 
        exit(1); 
    } 
    cout << "Connect to Server successfully." << endl;
} 

void Client::Run(){ 
    pthread_t id; 
    int ret = pthread_create(&id, NULL, send_heart, (void*)this); 
    if(ret != 0) { 
        cout << "Can not create thread!"; 
        exit(1); 
    } 
}  

void* send_heart(void* arg) { 
    cout << "The heartbeat sending thread started.\n"; 
    Client* c = (Client*)arg; 
    int count = 0; // 测试 
    while(1) { 
        PACKET_HEAD head; 
        head.type = HEART; 
        head.length = 0; 
        send(c->fd, &head, sizeof(head), 0); 
        sleep(3); // 定时3秒 
        ++count; // 测试：发送15次心跳包就停止发送 
        if(count > 15) break; 
    } 
} 

int main() { 
    Client client("192.168.8.88", 15000); 
    client.Connect(); 
    client.Run(); 
    while(1) {
        string msg; 
        getline(cin, msg); 
        if(msg == "exit") break;
        cout << "msg\n";
    } 
    return 0; 
}

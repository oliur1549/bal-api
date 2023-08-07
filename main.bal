import ballerina/io;
import ballerina/http;


public type Users record{
  int userId;
  int id;
  string title;
  boolean completed;
};

service /userAPI on new http:Listener(9000){
  resource function get users() returns error?{
    http:Client todo = check new("https://jsonplaceholder.typicode.com");
    json search = check todo->get("/todos");

    // io:println(search);
    return search;
  }
}
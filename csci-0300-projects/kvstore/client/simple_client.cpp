#include "simple_client.hpp"
#include <cstring>
#include <stdio.h>
#include <iostream>

std::optional<std::string> SimpleClient::Get(const std::string& key) {
  std::shared_ptr<ServerConn> conn = connect_to_server(this->server_addr);
  if (!conn) {
    cerr_color(RED, "Failed to connect to KvServer at ", this->server_addr,
               '.');
    return std::nullopt;
  }

  GetRequest req{key};
  if (!conn->send_request(req)) return std::nullopt;

  std::optional<Response> res = conn->recv_response();
  if (!res) return std::nullopt;
  if (auto* get_res = std::get_if<GetResponse>(&*res)) {
    return get_res->value;
  } else if (auto* error_res = std::get_if<ErrorResponse>(&*res)) {
    cerr_color(RED, "Failed to Get value from server: ", error_res->msg);
  }

  return std::nullopt;
}

bool SimpleClient::Put(const std::string& key, const std::string& value) {
  std::shared_ptr<ServerConn> conn = connect_to_server(this->server_addr);
  if (!conn) {
    cerr_color(RED, "Failed to connect to KvServer at ", this->server_addr,
               '.');
    return false;
  }

  PutRequest req{key, value};
  if (!conn->send_request(req)) return false;

  std::optional<Response> res = conn->recv_response();
  if (!res) return false;
  if (auto* put_res = std::get_if<PutResponse>(&*res)) {
    return true;
  } else if (auto* error_res = std::get_if<ErrorResponse>(&*res)) {
    cerr_color(RED, "Failed to Put value to server: ", error_res->msg);
  }

  return false;
}

bool SimpleClient::Append(const std::string& key, const std::string& value) {
  std::shared_ptr<ServerConn> conn = connect_to_server(this->server_addr);
  if (!conn) {
    cerr_color(RED, "Failed to connect to KvServer at ", this->server_addr,
               '.');
    return false;
  }

  AppendRequest req{key, value};
  if (!conn->send_request(req)) return false;

  std::optional<Response> res = conn->recv_response();
  if (!res) return false;
  if (auto* append_res = std::get_if<AppendResponse>(&*res)) {
    return true;
  } else if (auto* error_res = std::get_if<ErrorResponse>(&*res)) {
    cerr_color(RED, "Failed to Append value to server: ", error_res->msg);
  }

  return false;
}

std::optional<std::string> SimpleClient::Delete(const std::string& key) {
  std::shared_ptr<ServerConn> conn = connect_to_server(this->server_addr);
  if (!conn) {
    cerr_color(RED, "Failed to connect to KvServer at ", this->server_addr,
               '.');
    return std::nullopt;
  }

  DeleteRequest req{key};
  if (!conn->send_request(req)) return std::nullopt;

  std::optional<Response> res = conn->recv_response();
  if (!res) return std::nullopt;
  if (auto* delete_res = std::get_if<DeleteResponse>(&*res)) {
    return delete_res->value;
  } else if (auto* error_res = std::get_if<ErrorResponse>(&*res)) {
    cerr_color(RED, "Failed to Delete value on server: ", error_res->msg);
  }

  return std::nullopt;
}

std::optional<std::vector<std::string>> SimpleClient::MultiGet(
    const std::vector<std::string>& keys) {
  std::shared_ptr<ServerConn> conn = connect_to_server(this->server_addr);
  if (!conn) {
    cerr_color(RED, "Failed to connect to KvServer at ", this->server_addr,
               '.');
    return std::nullopt;
  }

  MultiGetRequest req{keys};
  if (!conn->send_request(req)) return std::nullopt;

  std::optional<Response> res = conn->recv_response();
  if (!res) return std::nullopt;
  if (auto* multiget_res = std::get_if<MultiGetResponse>(&*res)) {
    return multiget_res->values;
  } else if (auto* error_res = std::get_if<ErrorResponse>(&*res)) {
    cerr_color(RED, "Failed to MultiGet values on server: ", error_res->msg);
  }

  return std::nullopt;
}

bool SimpleClient::MultiPut(const std::vector<std::string>& keys,
                            const std::vector<std::string>& values) {
  std::shared_ptr<ServerConn> conn = connect_to_server(this->server_addr);
  if (!conn) {
    cerr_color(RED, "Failed to connect to KvServer at ", this->server_addr,
               '.');
    return false;
  }

  MultiPutRequest req{keys, values};
  if (!conn->send_request(req)) return false;

  std::optional<Response> res = conn->recv_response();
  if (!res) return false;
  if (auto* multiput_res = std::get_if<MultiPutResponse>(&*res)) {
    return true;
  } else if (auto* error_res = std::get_if<ErrorResponse>(&*res)) {
    cerr_color(RED, "Failed to MultiPut values on server: ", error_res->msg);
  }

  return false;
}

const std::string WHITESPACE = " \n\r\t\f\v";

/*
Function to trim whitespace from the left side of a string

Used to account for the bug in the stencil code that adds a space to some values
after strtok

Function taken from:
https://www.techiedelight.com/trim-string-cpp-remove-leading-trailing-spaces/
*/
std::string ltrim(const std::string &s)
{
	size_t start = s.find_first_not_of(WHITESPACE);
	return (start == std::string::npos) ? "" : s.substr(start);
}

/*
Function to trim whitespace from the right side of a string

Used to account for the bug in the stencil code that adds a space to some values
after strtok

Function taken from:
https://www.techiedelight.com/trim-string-cpp-remove-leading-trailing-spaces/
*/
std::string rtrim(const std::string &s)
{
	size_t end = s.find_last_not_of(WHITESPACE);
	return (end == std::string::npos) ? "" : s.substr(0, end + 1);
}

/*
Function to trim whitespace from the left/right side of a string

Used to account for the bug in the stencil code that adds a space to some values
after strtok

Function taken from:
https://www.techiedelight.com/trim-string-cpp-remove-leading-trailing-spaces/
*/
std::string trim(const std::string &s) {
	return rtrim(ltrim(s));
}

/*
 * Find Case Insensitive Sub String in a given substring

   Function taken from:
   https://thispointer.com/implementing-a-case-insensitive-stringfind-in-c/
 */
size_t findCaseInsensitive(std::string data, std::string toSearch, size_t pos = 0)
{
    // Convert complete given String to lower case
    std::transform(data.begin(), data.end(), data.begin(), ::tolower);
    // Convert complete given Sub String to lower case
    std::transform(toSearch.begin(), toSearch.end(), toSearch.begin(), ::tolower);
    // Find sub string in given string
    return data.find(toSearch, pos);
}


bool SimpleClient::GDPRDelete(const std::string& user) {
  // TODO: Write your GDPR deletion code here!
  // You can invoke operations directly on the client object, like so:
  //
  // std::string key("user_1_posts");
  // std::optional<std::string> posts = Get(key);
  // ...
  //
  // Assume the `user` arugment is a user ID such as "user_1".

  //Get the name of the user. In this case, Sarsra Breisand/
  std::string user_real_name = Get(user).value();

  /*
  We need to break up the name into each indivial word to put into a vector
  so that we may search posts later. To do this we use strtok.
  */

  //Use space as delimiter
  const char p[2] = " ";
  char *nme;
  //Vector of Strings
  std::vector<std::string> user_full_name;

  char* charstr = new char [user_real_name.length() + 1];
  std::strcpy (charstr, user_real_name.c_str());

  nme = strtok(charstr, p);
   
  while(nme != NULL ) {
    //Trim whitespace from every token
    user_full_name.push_back(trim(nme));
    nme = strtok(NULL, p);
  }
  /*
  Now we have a vector of each word of a person's name. For example, for user_2
  it would be <"Sarsra", "Breisand">.
  */

  /*
  Need to get the list of all users. To do that we need to turn the string
  returned by Get("all_users") into a vector. We will use strtok.
  */

  //Use comma as delimiter
  const char s[2] = ",";
  char *token;
  //Vector of strings
  std::vector<std::string> user_list;
   
  std::optional<std::string> pre_temp = Get("all_users").value();

  if (pre_temp == std::nullopt) {
    return false;
  }

  std::string post_temp = pre_temp.value();
  char* cstr = new char [post_temp.length() + 1];
  std::strcpy (cstr, post_temp.c_str());

  token = strtok(cstr, s);
  
  while(token != NULL ) {
    //Trim whitespace from every token
    user_list.push_back(trim(token));
    token = strtok(NULL, s);
  }
  /*
  Now we have a vector of every user. The vector looks like
  <"user_1", "user_2", ..., "user_16">.
  */
    
  //We will iterate through the vector of users to access the posts made by all
  //users  
  for(size_t i = 0; i < user_list.size(); i++) {
    //Append the string of the user at user_list[i] and the string "_posts"
    std::string curr_user_posts = user_list[i] + "_posts";


    /*
    Need to get the list of all the posts of a user. To do that we need to turn 
    the string returned by Get("user_i_posts") into a vector. 
    We will use strtok.
    */
    const char s[2] = ",";
    char *token;
    //Vector of strings
    std::vector<std::string> user_posts;
    
    
    std::optional<std::string> pre_temp = Get(curr_user_posts);

    if (pre_temp == std::nullopt) {
      return false;
    }

    std::string post_temp = pre_temp.value();
    char* cstr = new char [post_temp.length() + 1];
    std::strcpy(cstr, post_temp.c_str());

    token = strtok(cstr, s);
    
  
    while(token != NULL ) {
      //Trim whitespace from every token
      user_posts.push_back(trim(token));
      token = strtok(NULL, s);
    }
    /*
    Now we have a vector of every post of i user. The vector looks like
    <"post_1", "post_7", ..., "post_9">.
    */

    //We will iterate through the vector of user posts to access the posts made 
    //by all users  
    for(size_t i = 0; i < user_posts.size(); i++){ 
      //We want to get the text of the posts in the user_posts vector by calling
      //Get(user_posts[i])
      std::optional<std::string> post_text = Get(user_posts[i]);

      if (post_text == std::nullopt) {
        return false;
      }
      
      //For every post, we want to check if it contains mention of any part of
      //the name of the person who requested the deletion of their data.
      for (std::string n : user_full_name) {
        /*
        We check if the post text contains mention of any part of the user's
        name using a helper function that checks if a string is found in another
        string, case insensitive. 
        Function taken from 
        https://thispointer.com/implementing-a-case-insensitive-stringfind-in-c/
        */
        if(findCaseInsensitive(post_text.value(), n) != std::string::npos) {
          /*
          If the post contains mention of any part of the user's name, we 
          delete the post
          */
          Delete(user_posts[i]);
        }
      }
    }
  }
  
  
  //Delete posts made by user and their account.

  //First we delete the user's account
  Delete(user);

  //Append the string of the user at user_list[i] and the string "_posts"
  const std::string& curr_user_posts = user + "_posts";

  const char s_two[2] = ",";
  char *token_two;
  //Vector of strings
  std::vector<std::string> user_posts;
  
  
  std::optional<std::string> pre_temp_two = Get(curr_user_posts);

  if (pre_temp_two == std::nullopt) {
    return false;
  }

  std::string post_temp_two = pre_temp_two.value();
  char* cstr_two = new char [post_temp_two.length() + 1];
  std::strcpy (cstr_two, post_temp_two.c_str());

  token_two = strtok(cstr_two, s_two);
  

  while(token_two != NULL ) {
    //Trim whitespace from every token
    user_posts.push_back(trim(token_two));
    token_two = strtok(NULL, s_two);
  }

  //We will iterate through the vector of users to delete the posts made by the
  //specified user
  for(size_t i = 0; i < user_posts.size(); i++){ 
    std::optional<std::string> post_text = Get(user_posts[i]);

    if (post_text == std::nullopt) {
      return false;
    }
    //Delete the user's posts
    Delete(user_posts[i]);  
  }
  //Delete the user_i_posts key from the database since their posts are deleted
  Delete(curr_user_posts);

  /*
  Since we deleted the user's account, we need to update the all_users key
  to not contain mention of their account
  */

  //Create an empty string which we will update and put into the all_users key
  std::string new_all_users = "";
  //Iterate through the list of users
  for (size_t i = 0; i < user_list.size(); i++) {
    std::string temp;
    /*
    Check if the user at user_list[i] equals the user passed in through the 
    function parameter
    */
    if(user_list[i] != user) {
      //If it is not, we want to check if we are not at the last user in the 
      //list
      if(i + 1 != user_list.size()) {
        //If we are not at the last user, fill the temp string with the
        //append of user_list[i] and a comma to add to the new_all_users string
        temp = user_list[i] + ",";
      } else {
        //If it is the last user, then just set temp equal to user_list[i]
        temp = user_list[i];
      }
      //Append the new_all_users string with temp
      new_all_users.append(temp);
    }
  }
  //Update the all_users key with the new_all_users string
  Put("all_users", new_all_users);

  //Return true as we have deleted all the data required
  return true;
}

#include "simple_kvstore.hpp"

/*
Gets the value associated with <key> from the key-value store. Fails if it 
does not exist.
*/
bool SimpleKvStore::Get(const GetRequest* req, GetResponse* res) {
  // TODO (Part A, Steps 1 and 2): IMPLEMENT
  std::unique_lock guard(mtx);

  int present = (int)store.count(req->key);
  if(present == 0) {
    return false;
  }

  std::string store_value = store[req->key];
  res->value = store_value;

  return true;
}

/*
Sets <key> to <value>; replaces existing values.
*/
bool SimpleKvStore::Put(const PutRequest* req, PutResponse*) {
  // TODO (Part A, Steps 1 and 2): IMPLEMENT
  std::unique_lock guard(mtx);

  store[req->key] = req->value;
  return true;
}

/*
Appends <value> to the current value associated with <key>. Creates a new 
key-value pair if it does not already exist.
*/
bool SimpleKvStore::Append(const AppendRequest* req, AppendResponse*) {
  // TODO (Part A, Steps 1 and 2): IMPLEMENT
  std::unique_lock guard(mtx);

  int present = (int) store.count(req->key);
  if(present == 0) {
    store.insert(std::pair<std::string,std::string>(req->key, req->value));
  } else {
    store[req->key].append(req->value);
  }
  
  return true;
}

/*
Deletes <key> from the key-value store, returning the last saved value. Fails 
if it does not exist.
*/
bool SimpleKvStore::Delete(const DeleteRequest* req, DeleteResponse* res) {
  // TODO (Part A, Steps 1 and 2): IMPLEMENT
  std::unique_lock guard(mtx);

  int present = (int)store.count(req->key);
  if(present == 0) {
    return false;
  }
  res->value = store[req->key];
  store.erase(req->key);
  return true;
}

bool SimpleKvStore::MultiGet(const MultiGetRequest* req,
                             MultiGetResponse* res) {
  // TODO (Part A, Steps 1 and 2): IMPLEMENT
  std::unique_lock guard(mtx);

  for(int i = 0; i < (int) req->keys.size(); i++) {
    int present = store.count(req->keys[i]);
    if(present == 0) {
      return false;
    }

    (res->values).push_back(store.at(req->keys[i]));
  }
  return true;
}

bool SimpleKvStore::MultiPut(const MultiPutRequest* req, MultiPutResponse*) {
  // TODO (Part A, Steps 1 and 2): IMPLEMENT
  std::unique_lock guard(mtx);
  
  if (req->keys.size() != req->values.size()) {
    return false;
  }


  for(int i = 0; i < (int) req->keys.size(); i++){
    int present = store.count(req->keys[i]);
    if(present == 0) {
      //return false;
      store.insert(std::pair<std::string,std::string>(req->keys[i], req->values[i]));
    } else {
      store.at(req->keys[i]) = req->values[i];
    }
  }
  return true;
}

std::vector<std::string> SimpleKvStore::AllKeys() {
  // TODO (Part A, Steps 1 and 2): IMPLEMENT
  std::unique_lock guard(mtx);
  
  std::vector<std::string> keys;
  for(std::map<std::string, std::string>::iterator it = store.begin(); it != store.end(); it++) {
    keys.push_back(it->first);
  }
  return keys;
}

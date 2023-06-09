#include "concurrent_kvstore.hpp"

#include <optional>

bool ConcurrentKvStore::Get(const GetRequest* req, GetResponse* res) {
  // TODO (Part A, Steps 4 and 5): IMPLEMENT

  size_t b_num = store.bucket(req->key);
  
  store.mutexes[b_num].lock_shared(); // acquire/release a shared lock

  std::optional<DbItem> opt = store.getIfExists(b_num, req->key);

  if(opt == std::nullopt) {
    return false;
  } 

  std::string store_value = opt.value().value;
  res->value = store_value;

  store.mutexes[b_num].unlock_shared();

  return true;
}

bool ConcurrentKvStore::Put(const PutRequest* req, PutResponse*) {
  // TODO (Part A, Steps 4 and 5): IMPLEMENT
 

  size_t b_num = store.bucket(req->key);

  store.mutexes[b_num].lock();

  store.insertItem(b_num, req->key, req->value);

  store.mutexes[b_num].unlock();
  
  return true;
}

bool ConcurrentKvStore::Append(const AppendRequest* req, AppendResponse*) {
  // TODO (Part A, Steps 4 and 5): IMPLEMENT

  size_t b_num = store.bucket(req->key);

  store.mutexes[b_num].lock();

  std::optional<DbItem> opt = store.getIfExists(b_num, req->key);

  if(opt == std::nullopt) {
    store.insertItem(b_num, req->key, req->value);
  } else {
    std::string store_value = opt.value().value.append(req->value);
    store.insertItem(b_num, req->key, store_value);
  }

  store.mutexes[b_num].unlock();

  return true;
}

bool ConcurrentKvStore::Delete(const DeleteRequest* req, DeleteResponse* res) {
  // TODO (Part A, Steps 4 and 5): IMPLEMENT
  size_t b_num = store.bucket(req->key);

  store.mutexes[b_num].lock();

  std::optional<DbItem> opt = store.getIfExists(b_num, req->key);

  if(opt == std::nullopt) {
    return false;
  } 

  res->value = opt.value().value;
  store.removeItem(b_num, req->key);

  store.mutexes[b_num].unlock();
  
  return true;
}

bool ConcurrentKvStore::MultiGet(const MultiGetRequest* req,
                                 MultiGetResponse* res) {
  // TODO (Part A, Steps 4 and 5): IMPLEMENT

  std::vector<size_t> bucket_nums;

  for(int i = 0; i < (int) req->keys.size(); i++){
    size_t b_num = store.bucket(req->keys[i]);
    bucket_nums.push_back(b_num);
  }

  std::sort(bucket_nums.begin(), bucket_nums.end());
  auto last = std::unique(bucket_nums.begin(), bucket_nums.end());
  bucket_nums.erase(last, bucket_nums.end());

  for(int i = 0; i < bucket_nums.size(); i++){
    store.mutexes[bucket_nums[i]].lock_shared();
  }

  for(int i = 0; i < (int) req->keys.size(); i++) {
    size_t b_num = store.bucket(req->keys[i]);
    std::optional<DbItem> opt = store.getIfExists(b_num, req->keys[i]);
    if(opt == std::nullopt) {
      return false;
    } 
    (res->values).push_back(opt.value().value);
  }

  for(int i = 0; i < bucket_nums.size(); i++){
    store.mutexes[bucket_nums[i]].unlock_shared();
  }
  
  return true;
}

bool ConcurrentKvStore::MultiPut(const MultiPutRequest* req,
                                 MultiPutResponse*) {
  // TODO (Part A, Steps 4 and 5): IMPLEMENT
  if (req->keys.size() != req->values.size()) {
    return false;
  }

  std::vector<size_t> bucket_nums;

  for(int i = 0; i < (int) req->keys.size(); i++){
    size_t b_num = store.bucket(req->keys[i]);
    bucket_nums.push_back(b_num);
  }

  std::sort(bucket_nums.begin(), bucket_nums.end());
  auto last = std::unique(bucket_nums.begin(), bucket_nums.end());
  bucket_nums.erase(last, bucket_nums.end());
  

  for(int i = 0; i < bucket_nums.size(); i++){
    store.mutexes[bucket_nums[i]].lock();
  }


  for(int i = 0; i < (int) req->keys.size(); i++) {
    size_t b_num = store.bucket(req->keys[i]);
    std::optional<DbItem> opt = store.getIfExists(b_num, req->keys[i]);
    store.insertItem(b_num, req->keys[i], req->values[i]);
  }

  for(int i = 0; i < bucket_nums.size(); i++){
    store.mutexes[bucket_nums[i]].unlock();
  }

  return true;
}

std::vector<std::string> ConcurrentKvStore::AllKeys() {
  // TODO (Part A, Steps 4 and 5): IMPLEMENT

  std::vector<std::string> keys;

  for(size_t i = 0; i < store.BUCKET_COUNT; i++) {
    store.mutexes[i].lock_shared();
  }

  for (auto &b : store.buckets) {
    for (auto &item : b) {
      keys.push_back(item.key);
    }
  }

  for(size_t i = 0; i < store.BUCKET_COUNT; i++) {
    store.mutexes[i].unlock_shared();
  }

  return keys;
}

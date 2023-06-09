#include "synchronized_queue.hpp"

template <typename T>
size_t synchronized_queue<T>::size() {
  // TODO (Part A, Step 3): IMPLEMENT

  // NOTE: By the time this call returns, another thread may have changed the
  // size of the queue. For this reason it is not advised to use this call for
  // anything other than logging.

  std::unique_lock guard(mtx);
  return this->q.size();
}

template <typename T>
bool synchronized_queue<T>::pop(T* elt) {
  // TODO (Part A, Step 3): IMPLEMENT
  std::unique_lock guard(mtx);

  // Pop and set the elt pointer element from the front of the queue. Returns
  // true if the queue has been stopped, or false otherwise.

  if (this->q.empty()) {
    // Unless the queue has been stopped, calling pop() will always set elt and
    // return false. If the queue is empty, pop will wait until an element is
    // pushed onto it.
    while (this->q.empty()) { // don't just do `if (queue.size() == 0)` here
      if (this->is_stopped) {
        return true;
      }

      this->cv.wait(guard);
    }
  }

  if (this->is_stopped) {
    // However, if the queue has been stopped, even if the queue is not empty, 
    // the function will return true with no element set.
    return true;
  }

  
  *elt = this->q.front();
  this->q.pop();
  return false;
}


/**
  * Push an element onto the back of the queue.
  */
template <typename T>
void synchronized_queue<T>::push(T elt) {
  // TODO (Part A, Step 3): IMPLEMENT
  std::unique_lock guard(mtx);
  
  // If the queue is empty, this call will signal any one thread that is waiting
  // to pop from the queue.
  if(this->q.size() == 0) {
    this->q.push(elt);
    cv.notify_all();
  } else {
    this->q.push(elt);
  }
}

template <typename T>
std::vector<T> synchronized_queue<T>::flush() {
  // TODO (Part A, Step 3): IMPLEMENT

  /**
   * Flush will return a vector of all elements currently in the queue, even if
   * the queue has been stopped.
   *
   * After this function is called the queue will be empty. This call may
   * return an empty vector without blocking.
   *
   * @return vector of all elements in the queue
   */
  
  std::unique_lock guard(mtx);
  if (this->q.empty()) {
    return {};
  }

  std::vector<T> elts;

  while(!this->q.empty()){
		elts.push_back(this->q.front());
		this->q.pop();
	}

  return elts;
}

template <typename T>
void synchronized_queue<T>::stop() {
  // TODO (Part A, Step 3): IMPLEMENT
  std::unique_lock guard(mtx);

  /**
   * Stop the queue.
   *
   * This function serves as a way to release any threads waiting for the
   * queue to become non-empty. Doing this also allows the condition variable
   * to be cleaned up when the program exists.
   */
  
  this->cv.notify_all();

  // Atomic, thread-safe boolean that indicates whether the queue has been
  // stopped; false until stop() is called, which sets it to true.
  this->is_stopped = true;
}

// NOTE: DO NOT TOUCH! Why is this necessary? Because C++ is a beautiful
// language:
// https://isocpp.org/wiki/faq/templates#separate-template-fn-defn-from-decl
template class synchronized_queue<int>;
template class synchronized_queue<std::shared_ptr<ClientConn>>;

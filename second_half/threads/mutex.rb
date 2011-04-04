require 'thread'
semaphore = Mutex.new

a = Thread.new {
  semaphore.synchronize {
    # access shared resource
  }
}

b = Thread.new {
  semaphore.synchronize {
    # access shared resource
  }
}



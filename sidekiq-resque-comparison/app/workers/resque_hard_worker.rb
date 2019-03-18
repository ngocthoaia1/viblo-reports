class ResqueHardWorker
  @queue = :simple_queue

  def self.perform(*args)
    puts "job starting"
    a = (0..200_000).to_a.map{|i| User.new name: "user name#{i}"}
    puts "job done !"
  end
end

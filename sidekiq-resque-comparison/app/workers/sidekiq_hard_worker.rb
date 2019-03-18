class SidekiqHardWorker
  include Sidekiq::Worker

  def perform(*args)
    puts "job starting"
    a = (0..200_000).to_a.map{|i| User.new name: "user name#{i}"}
    GC.start # run garbage collection
    puts "job done !"
  end
end

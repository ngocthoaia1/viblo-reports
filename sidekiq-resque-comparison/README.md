### resque
#### start worker
```
QUEUE=* rake resque:work
```

##### call worker
```
20.times{Resque.enqueue ResqueHardWorker, nil}
```


### sidekiq

#### start worker
```
bundle exec sidekiq
```

#### test worker
```
20.times{SidekiqHardWorker.perform_async}
```

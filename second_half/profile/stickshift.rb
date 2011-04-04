task :sleep => :snooze do
  sleep 1
end
task :snooze do
  sleep 2
end
task :default => :sleep

require 'stickshift'
::Rake::Application.instrument :top_level
::Rake::Application.instrument :[], :with_args => 0
::Rake::Task.instrument :invoke, :execute, :inspect_self => true

   0ms >  Rake::Application#top_level < 3001ms
   0ms >    Rake::Application#[]("default") < 0ms
   0ms >    Rake::Task#invoke{<Rake::Task default => [sleep]>} < 3001ms
   0ms >      Rake::Application#[]("sleep") < 0ms
   0ms >      Rake::Application#[]("snooze") < 0ms
2000ms >      Rake::Task#execute{<Rake::Task snooze => []>} < 2000ms
1000ms >      Rake::Task#execute{<Rake::Task sleep => [snooze]>} < 1000ms
   0ms >      Rake::Task#execute{<Rake::Task default => [sleep]>} < 0ms



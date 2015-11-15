
script 'run_experiment' do
  cwd "/tmp"
  user node['wordcount']['user']
  group node['wordcount']['group']
  interpreter "bash"
  code <<-EOM

mkdir ~/teragen

/srv/hadoop/bin/hadoop jar /srv/hadoop-2.4.0/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.4.0.jar teragen 1000 ~/teragen
  EOM
end


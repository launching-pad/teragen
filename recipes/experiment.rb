
script 'run_experiment' do
  cwd "/tmp"
  user node['teragen']['user']
  group node['teragen']['group']
  interpreter "bash"
  code <<-EOM
/srv/hadoop/bin/hadoop fs -rmr /srv
/srv/hadoop-2.4.0/bin/hadoop jar /srv/hadoop-2.4.0/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.4.0.jar teragen #{node[:teragen][:records]} /srv/teragen
  EOM
end


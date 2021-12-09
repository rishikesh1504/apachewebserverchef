package 'apache2' do
  action :install
end
template '/var/www/html/index.html' do
  source 'index.html.erb'
  variables( :name => 'rishikesh')
end
service "apache2" do
  action [ :enable,:start]
end


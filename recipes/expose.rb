mount_point = node["nfs-server"]["mount-point"]
ip_range = node["nfs-server"]["ip-range"]

template "/etc/exports" do
  source "exports.erb"
  owner "root"
  group "root"
  mode 0644
  variables(
    :mount_point => mount_point,
    :ip_range => ip_range,
    # these seem to just work :-)
    :export_options => "(rw,sync,all_squash,anonuid=1000,insecure,no_subtree_check)"
  )
end

execute 'update exportfs' do
  command "exportfs -a"
  action :run
end

execute 'restart nfsd' do
  command "/etc/init.d/nfs-kernel-server restart"
  action :run
end

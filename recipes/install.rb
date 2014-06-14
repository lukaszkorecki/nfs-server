%w{ nfs-kernel-server nfs-common }.each do |pkg|
  package pkg do
    action :install
  end
end

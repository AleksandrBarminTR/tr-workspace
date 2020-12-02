# Install JDK 11
download_url = corretto_11_url
remote_file '/dev-tools/tmp/corretto-11' do
    source download_url
    show_progress true
    action :create
end

archive_file '/dev-tools/tmp/corretto-11' do
    destination '/dev-tools'
    overwrite true
    action :extract
end
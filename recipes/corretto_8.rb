# Install JDK 8
download_url = corretto_8_url
remote_file '/dev-tools/tmp/corretto-8' do
    source download_url
    show_progress true
    action :create
end

archive_file '/dev-tools/tmp/corretto-8' do
    destination '/dev-tools'
    overwrite true
    action :extract
end
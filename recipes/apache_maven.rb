# Install Maven
download_url = maven_url
remote_file '/dev-tools/tmp/apache-maven.tar.gz' do
    source download_url
    show_progress true
    action :create
end

archive_file '/dev-tools/tmp/apache-maven.tar.gz' do
    destination '/dev-tools'
    overwrite true
    action :extract
end
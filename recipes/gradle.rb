# Install Gradle
download_url = gradle_url
remote_file '/dev-tools/tmp/gradle-all.zip' do
    source download_url
    show_progress true
    action :create
end

archive_file '/dev-tools/tmp/gradle-all.zip' do
    destination '/dev-tools'
    overwrite true
    action :extract
end
# Install IntelliJ Idea
download_url = idea_url
remote_file '/dev-tools/tmp/idea.tar.gz' do
    source download_url
    show_progress true
    action :create
end

archive_file '/dev-tools/tmp/idea.tar.gz' do
    destination '/dev-tools'
    overwrite true
    action :extract
end
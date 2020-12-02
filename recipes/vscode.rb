# Install VS Code
download_url = vscode_url
remote_file '/dev-tools/tmp/vscode.tar.gz' do
    source download_url
    show_progress true
    action :create
end

archive_file '/dev-tools/tmp/vscode.tar.gz' do
    destination '/dev-tools'
    overwrite true
    action :extract
end
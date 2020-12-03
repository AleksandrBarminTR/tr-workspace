# Install VS Code
download_url = vscode_url
remote_file '/dev-tools/tmp/vscode.tar.gz' do
    source download_url
    show_progress true
    action :create
end

destination_folder = '/dev-tools/'
if not is_linux
    destination_folder = '/dev-tools/vscode/'
end

archive_file '/dev-tools/tmp/vscode.tar.gz' do
    destination destination_folder
    overwrite true
    action :extract
end
module TR
    module Helper
        def is_linux
            node['os'] == 'linux'
        end

        def corretto_8_url
            download_url = ''
            case node['os']
            when 'linux'
                download_url = 'https://corretto.aws/downloads/latest/amazon-corretto-8-x64-linux-jdk.tar.gz' 
            else
                download_url = 'https://corretto.aws/downloads/latest/amazon-corretto-8-x64-windows-jdk.zip'
            end
            download_url
        end

        def corretto_11_url
            download_url = ''
            case node['os']
            when 'linux'
                download_url = 'https://corretto.aws/downloads/latest/amazon-corretto-11-x64-linux-jdk.tar.gz' 
            else
                download_url = 'https://corretto.aws/downloads/latest/amazon-corretto-11-x64-windows-jdk.zip'
            end
            download_url
        end

        def maven_url
            'https://apache-mirror.rbc.ru/pub/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz'
        end

        def gradle_url
            'https://services.gradle.org/distributions/gradle-6.7.1-all.zip'
        end

        def vscode_url
            download_url = ''
            case node['os']
            when 'linux'
                download_url = 'https://go.microsoft.com/fwlink/?LinkID=620884' 
            else
                download_url = 'https://go.microsoft.com/fwlink/?Linkid=850641'
            end
            download_url
        end

        def idea_url
            'https://download.jetbrains.com/idea/ideaIC-2020.2.4.tar.gz'
        end
    end
end

Chef::Recipe.include(TR::Helper)
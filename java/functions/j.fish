#!/usr/bin/env fish

function j -d "Switch java version"
    set -f java_version $argv[1]
    set -gx JAVA_HOME "$(/usr/libexec/java_home -v$java_version)"
    java -version
end
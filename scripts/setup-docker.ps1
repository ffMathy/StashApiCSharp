Function GetImageAndStartContainer {
    # get Stash image
    docker pull atlassian/stash
    # create container and expose port 7990
    docker run --name "my-stash" -u root -v /data/stash:/var/atlassian/application-data/stash -d -p 7990:7990 -p 7999:7999 atlassian/stash

    Write-Output '"GetImageAndStartContainer" function completed...'
}

Function StopAndDeleteContainer {
    # stop container
    docker stop my-stash
    # delete container
    docker rm my stash
    
    Write-Output '"StopAndDeleteContainer" function completed...'
}

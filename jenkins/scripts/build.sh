#!/bin/bash -x

#docker -H 10.0.109.150 stop chatapp
#BUILD="$(($BUILD_ID-2))"
#docker -H 10.0.109.150 rmi --force chatapp:$BUILD
         if [ "$?" == "0" ]
             then
                 docker -H 10.0.109.150 build . -t chatapp-prod:$BUILD_ID
             if [ "$?" == "0" ]
                 then
		     :
                 else
                     echo "Chat app build failed"
             fi
         fi

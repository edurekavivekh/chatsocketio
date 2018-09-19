#!/bin/bash -x

#docker -H 10.0.109.150 stop chatapp
#BUILD="$(($BUILD_ID-2))"
#docker -H 10.0.109.150 rmi --force chatapp:$BUILD


                     docker -H 10.0.109.150 rm chatapp-prod
                     docker -H 10.0.109.150 run -d -p 80:3000 --name chatapp-prod chatapp-prod:$BUILD_ID
             if [ "$?" == "0" ]
                 then
		     "Chap App successfully deployed on production"
                 else
                     echo "Production deployment failed"
             fi

docker.sh

docker script

# push docker images from one docker registry to another

#!/bin/bash

#Export required variables

export new=evolveapps
export old=labs47b

export final=everything_successfuly_complited

#Change docker image name 

export image1=pdf_splitter:170 
export image2=text_extractor:140
export image3=node-dociql
export image4=notifications_server:152



docker image pull $old/$image1 

docker image tag $old/$image1 $new/$image1 

docker image push $new/$image1

echo $image1-pushed


#!/bin/bash

docker image pull $old/$image2

docker image tag $old/$image2 $new/$image2

docker image push $new/$image2

echo $image2-pushed


#!/bin/bash

docker image pull $old/$image3

docker image tag $old/$image3 $new/$image3

docker image push $new/$image3

echo $image3-pushed



#!/bin/bash

docker image pull $old/$image4

docker image tag $old/$image4 $new/$image4

docker image push $new/$image4

echo $image4-pushed

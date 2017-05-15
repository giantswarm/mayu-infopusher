# infopusher
Tool that is originally included in https://github.com/giantswarm/mayu


It is used for gathering info about machine and requesting cloudconfig/iginition for this machine from `mayu`.

# Docker image
Image is avaiabel at `quay.io` - https://quay.io/repository/giantswarm/mayu-infopusher

When runing in docker container, you have to provide few extra opts
`docker run --net=host --privileged=true -v /sys:/sys -v /dev:/dev -it quay.io/giantswarm/mayu-infopusher:33f832fcf8c0fa3a80300274ebb801ec2a87d3e3`

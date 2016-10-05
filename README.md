## ElasticSearch Cluster for AWS
ElasticSearch with the cloud-aws plugin as required for clustering on EC2.

### Usage
Intended for use within kubernetes, you should provide the following arguments to the container via command line arguments:

> note: this container's `/docker-entrypoint.sh` script populates `SG` and `MAC` environment variables.

```
- "--discovery.type=ec2"
- "--discovery.ec2.groups=${SG}"
- "--cloud.aws.region=${YOUR_REGION}"
- "--cloud.aws.protocol=https"
```
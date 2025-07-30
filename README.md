# Hospital Website Infrastructure
## Deployment
1. AWS Console → CloudFormation → Create stack  
2. Upload `hospital-website.yml`  
3. Follow wizard steps
4. 
```yaml
# Paste your entire CloudFormation YAML here
AWSTemplateFormatVersion: '2010-09-09'
Description: Hospital Website Deployment
Resources:
  WebsiteBucket:
    Type: AWS::S3::Bucket
    ...
```

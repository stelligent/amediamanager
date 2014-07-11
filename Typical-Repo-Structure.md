## Cloud Deployment Production Line Repository Structure

At Stelligent we follow a standard repository structure for reliability, familiarity, and logical structure of components across projects.  

Typically Cloud Deployment Production Line implementations consists of three repositories:
* Application Repository
* Cookbook Repository
* Jenkins Configuration and Deployment Repository

#### Application Repository
The Application Repository contains all application configuration and deployment information and is typically structured as follows:
* App
* Config
* Database
* Infrastructure
* Pipeline
  * Jenkins_step_1.sh
  * Jenkins_step_2.sh
  * Jenkins_step_X.sh
  * Features
    * Cucumber_feature1.feature
    * Cucumber_feature2.feature
* Script
* Spec
* Vendor
* Readme.md (file)

#### Cookbook Repository
The Cookbook Repository contains all application specific deployment Cookbooks:
* Cookbook X
* Cookbook Y
* Cookbook Z
* Files:
  * Readme.md

#### Jenkins Configuration and Deployment Repository
The Jenkins Configuration and Deployment Repository contains all Jenkins specific deployment Cookbooks, scripts, and Cloud Formation(cfn) templates:
* Cookbook X
* Cookbook Y
* Cookbook Z
* Files
  * readme.md
  * deployment_script.rb
  * vpc.cfn.template (called by deployment script)
  * jenkins.cfn.template (called by deployment script)

#!/bin/bash -e

gem install opendelivery bundler  --no-ri --no-rdoc

export SHA=`ruby -e 'require "opendelivery"' -e "puts OpenDelivery::Domain.new('$region').get_property '$sdb_domain','$pipeline_instance_id', 'SHA'"`
echo checking out revision $SHA
git checkout $SHA

#mvn package

ruby -e 'require "opendelivery"' -e "OpenDelivery::Domain.new('$region').set_property '$sdb_domain','$pipeline_instance_id', 'furthest_pipeline_stage_completed', 'build'"
ruby -e 'require "opendelivery"' -e "OpenDelivery::Domain.new('$region').set_property '$sdb_domain','$pipeline_instance_id', 'production_candidate', 'false'"

# chef-jenkins-ci-cookbook

berks cookbook jenkins_ci

metadata.rb:
depends 'apt'
depends 'jenkins'
depends 'git'
depends 'maven'
depends 'wlp'


recipes/default.rb

include_recipe 'apt'

include_recipe 'git'

include_recipe 'wlp'

include_recipe 'maven'

include_recipe 'jenkins::master'

jenkins_plugin 'scm-api'
jenkins_plugin 'git-client'
jenkins_plugin 'git'
jenkins_plugin 'ssh'


berks install

chef-jenkins-ci
===============

Create the Jenkins VM using vagrant and chef 

vagrant plugin install vagrant-berkshelf

vagrant plugin install vagrant-omnibus

vagrant up
 


## Supported Platforms

Debian , Cent-Os 

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['jenkins_ci']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### jenkins_ci::default

Include `jenkins_ci` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[jenkins_ci::default]"
  ]
}
```

## License and Authors

Author:: YOUR_NAME (<YOUR_EMAIL>)

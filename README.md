# chef-jenkins-ci-cookbook

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

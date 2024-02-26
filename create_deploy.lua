local workshop_path = '../../?.lua'
package.path = package.path .. ';' .. workshop_path

require('workshop.base')

local create_deploy_script = request('!.system.create_deploy_script')

local used_modules =
  {
    'workshop.base',
    'run',
  }

create_deploy_script(used_modules)

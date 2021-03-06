----------------------- [ CoreV ] -----------------------
-- GitLab: https://git.arens.io/ThymonA/corev-framework/
-- GitHub: https://github.com/ThymonA/CoreV-Framework/
-- License: GNU General Public License v3.0
--          https://choosealicense.com/licenses/gpl-3.0/
-- Author: Thymon Arens <contact@arens.io>
-- Name: CoreV
-- Version: 1.0.0
-- Description: Custom FiveM Framework
----------------------- [ CoreV ] -----------------------
local assert = assert

--- Cache global variables
local corev = assert(corev)
local class = assert(class)
local error = assert(error)
local lower = assert(lower)

local whitelistedOnEvents = {
    ['checkbox'] = {
        'checked',
        'unchecked'
    },
    ['list'] = {
        'change',
        'select',
        'unselect'
    },
    ['button'] = {
        'hover',
        'select'
    }
}

function createMenuItem(menu, type)
    if (corev:typeof(menu) ~= 'menu') then
        error(corev:t('menu_invalid_type'):format(corev:typeof(menu)))
        return
    end

    type = lower(corev:ensure(type, 'unknown'))

    --- Create a `menu-item` class
    local item = class "menu-item"
end
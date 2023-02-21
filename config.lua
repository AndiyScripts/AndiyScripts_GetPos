AndiyScripts = {}

AndiyScripts.Use_Menu = true

AndiyScripts.CommandMenu = {-- if Use_Menu = true then
    ['commandmenu'] = {
        permission = 'admin',
        help_string = 'Open Command Menu',
    },
}

AndiyScripts.Commands = {-- if Use_Menu = false then
    ['posv1'] = {
        permission = 'admin', -- Allowed group
        help_string = 'Copy vector3(0,0,0) Position',
        get_position_type = 'v1',
    },
    ['posv2'] = {
        permission = 'admin',
        help_string = 'Copy vector4(0,0,0) Position',
        get_position_type = 'v2',
    },
    ['posb1'] = {
        permission = 'admin',
        help_string = 'Copy {x=0,y=0,z=0} Position',
        get_position_type = 'b1',
    },
    ['posb2'] = {
        permission = 'admin',
        help_string = 'Copy {x=0,y=0,z=0,h=0} Position',
        get_position_type = 'b2',
    },
    ['post1'] = {
        permission = 'admin',
        help_string = 'Copy x=0,y=0,z=0 Position',
        get_position_type = 't1',
    },
    ['post2'] = {
        permission = 'admin',
        help_string = 'Copy x=0,y=0,z=0,h=0 Position',
        get_position_type = 't2',
    },
    ['poss1'] = {
        permission = 'admin',
        help_string = 'Copy [x]=0,[y]=0,[z]=0 Position',
        get_position_type = 's1',
    },
    ['poss2'] = {
        permission = 'admin',
        help_string = 'Copy [x]=0,[y]=0,[z]=0,[h]=0 Position',
        get_position_type = 's2',
    },
    ['pos1'] = {
        permission = 'admin',
        help_string = 'Copy 0,0,0 (x,y,z) Position',
        get_position_type = '1',
    },
    ['pos2'] = {
        permission = 'admin',
        help_string = 'Copy 0,0,0,0 (x,y,z,h) Position',
        get_position_type = '2',
    },
    ['pos3'] = {
        permission = 'admin',
        help_string = 'Copy 0,0 (x,y) Position',
        get_position_type = '3',
    },
    ['pos4'] = {
        permission = 'admin',
        help_string = 'Copy Heading Position',
        get_position_type = '4',
    },
}
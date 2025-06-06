return {
    ['autoshop'] = {
        interiorId = 285953,
        insideSpawn = vec4(-1357.475, 152.179, -99.194, 357.259),
        customizationMenu = vec3(-1347.294, 159.602, -99.194),
        Vehicles = {
            [1] = {
                vec4(-1329.425, 156.265, -99.665, 180.294),
                vec4(-1333.334, 156.395, -99.698, 179.724),
                vec4(-1337.506, 156.044, -99.561, 179.536),
                vec4(-1342.190, 155.810, -99.455, 181.386),
                vec4(-1342.291, 142.635, -99.767, 358.853),
                vec4(-1337.753, 142.599, -99.767, 358.436),
                vec4(-1333.205, 142.648, -99.887, 0.871),
                vec4(-1329.059, 142.627, -99.887, 359.965),
                vec4(-1324.629, 143.047, -99.578, 359.584),
                vec4(-1324.698, 149.480, -99.764, 88.756)
            }
        },
        Customization = {
            DeactivateInterior = function()
                local interiorId = 285953
                local list = {
                    'entity_set_car_lift_purchase',
                    'entity_set_box_clutter',
                    'entity_set_chalkboard',
                    'entity_set_bedroom',
                    'entity_set_style_1',
                    'entity_set_style_2',
                    'entity_set_style_3',
                    'entity_set_style_4',
                    'entity_set_style_5',
                    'entity_set_style_6',
                    'entity_set_style_7',
                    'entity_set_style_8',
                    'entity_set_style_9',
                    'entity_set_table',
                    'entity_set_car_lift_cutscene',
                    'entity_set_car_lift_default',
                    'entity_set_cut_seats',
                    'entity_set_laptop',
                    'entity_set_cabinets',
                    'entity_set_bedroom_empty',
                    'entity_set_virus',
                    'entity_set_scope',
                    'entity_set_thermal',
                    'entity_set_jammers',
                    'entity_set_container',
                    'entity_set_train',
                    'entity_set_IAA',
                    'entity_set_methLab',
                    'entity_set_bombs',
                    'entity_set_lightbox',
                    'entity_set_tints',
                    'entity_set_ecu',
                    'entity_set_plate',
                    'entity_set_drive',
                    'entity_set_def_table',
                }

                for i = 1, #list do
                    if IsInteriorEntitySetActive(interiorId, list[i]) then
                        DeactivateInteriorEntitySet(interiorId, list[i])
                    end
                end

                RefreshInterior(interiorId)
            end,

            LoadDefault = function()
                local interiorId = 285953
                local list = {
                    { name = 'entity_set_style_1' },
                    { name = 'entity_set_tints', color = 0 }
                }

                for i = 1, #list do
                    if not IsInteriorEntitySetActive(interiorId, list[i].name) then
                        ActivateInteriorEntitySet(interiorId, list[i].name)
                    end

                    if list[i].color then
                        SetInteriorEntitySetColor(interiorId, list[i].name, list[i].color)
                    end
                end

                RefreshInterior(interiorId)
            end,

            Purchasable = {
                ['Garage Style'] = {
                    { label = 'Undressed', name = 'entity_set_style_1', price = 250000, type = 'garage_style' },
                    { label = 'Flawless', name = 'entity_set_style_2', price = 265000, type = 'garage_style' },
                    { label = 'Polished', name = 'entity_set_style_3', price = 275000, type = 'garage_style' },
                    { label = 'Concrete Chic', name = 'entity_set_style_4', price = 285000, type = 'garage_style' },
                    { label = 'Nostalgia Trip', name = 'entity_set_style_5', price = 325000, type = 'garage_style' },
                    { label = 'Route 68', name = 'entity_set_style_6', price = 340000, type = 'garage_style' },
                    { label = 'Super Chibi', name = 'entity_set_style_7', price = 360000, type = 'garage_style' },
                    { label = 'Wildstyle', name = 'entity_set_style_8', price = 425000, type = 'garage_style' },
                    { label = 'Race and Chase', name = 'entity_set_style_9', price = 450000, type = 'garage_style' },
                },
                ['Tint'] = {
                    { label = 'None', name = '', price = 187500, type = 'garage_tint' },
                    { label = 'Yellow', name = 'entity_set_tints', price = 187500, type = 'garage_tint', color = 0 },
                    { label = 'White', name = 'entity_set_tints', price = 187500, type = 'garage_tint', color = 1 },
                    { label = 'Black', name = 'entity_set_tints', price = 187500, type = 'garage_tint', color = 2 },
                    { label = 'Green', name = 'entity_set_tints', price = 187500, type = 'garage_tint', color = 3 },
                    { label = 'Orange', name = 'entity_set_tints', price = 187500, type = 'garage_tint', color = 4 },
                    { label = 'Red', name = 'entity_set_tints', price = 187500, type = 'garage_tint', color = 5 },
                    { label = 'Pink', name = 'entity_set_tints', price = 187500, type = 'garage_tint', color = 6 },
                    { label = 'Blue', name = 'entity_set_tints', price = 187500, type = 'garage_tint', color = 7 },
                    { label = 'Purple', name = 'entity_set_tints', price = 187500, type = 'garage_tint', color = 8 },
                },
            }
        }
    },

    ['agency'] = {
        interiorId = 286721,
        ipl = 'sf_int_placement_sec_interior_2_dlc_garage_sec_milo_',
        insideSpawn = vec4(-1068.835, -84.989, -99.000, 92.062),
        customizationMenu = vec3(-1072.931, -87.790, -98.998),
        Vehicles = {
            [1] = {
                vec4(-1066.113, -81.196, -99.412, 89.527),
                vec4(-1065.999, -76.719, -99.410, 88.172),
                vec4(-1065.981, -72.445, -99.412, 88.687),
                vec4(-1065.841, -68.539, -99.411, 88.255),
                vec4(-1066.027, -64.435, -99.412, 86.482),
                vec4(-1079.422, -67.896, -99.412, 269.571),
                vec4(-1079.044, -72.257, -99.412, 270.097),
                vec4(-1079.449, -76.726, -99.412, 269.210),
                vec4(-1079.504, -81.031, -99.412, 268.147),
                vec4(-1079.016, -85.502, -99.411, 270.234),
                vec4(-1079.450, -85.448, -95.012, 269.469),
                vec4(-1079.390, -80.989, -95.011, 269.330),
                vec4(-1079.237, -76.856, -95.012, 268.235),
                vec4(-1079.298, -72.716, -95.012, 269.385),
                vec4(-1079.323, -68.137, -95.012, 270.108),
                vec4(-1065.536, -64.028, -95.011, 90.670),
                vec4(-1065.667, -68.856, -95.011, 88.375),
                vec4(-1065.630, -72.794, -95.012, 88.877),
                vec4(-1065.816, -76.874, -95.012, 89.108),
                vec4(-1065.989, -81.113, -95.012, 89.960),
                vec4(-1079.369, -68.234, -90.612, 270.378),
                vec4(-1079.233, -72.387, -90.613, 272.098),
                vec4(-1079.531, -76.779, -90.611, 268.497),
                vec4(-1079.268, -80.878, -90.613, 272.066),
                vec4(-1079.262, -84.888, -90.612, 268.589)
            }
        },
        Customization = {
            Default = {
                [1] = {
                    { name = 'entity_set_workshop_wall', type = 'wall' },
                    { name = 'entity_set_art_1_nomod', type = 'no_mod_wall' },
                    { name = 'entity_set_tints', type = 'tint', color = 1 }
                }
            },

            DeactivateInterior = function()
                local interiorId = 286721
                local list = {
                    'entity_set_workshop_wall',
                    'entity_set_wallpaper_01',
                    'entity_set_wallpaper_02',
                    'entity_set_wallpaper_03',
                    'entity_set_wallpaper_04',
                    'entity_set_wallpaper_05',
                    'entity_set_wallpaper_06',
                    'entity_set_wallpaper_07',
                    'entity_set_wallpaper_08',
                    'entity_set_wallpaper_09',
                    'entity_set_art_1',
                    'entity_set_art_2',
                    'entity_set_art_3',
                    'entity_set_art_1_nomod',
                    'entity_set_art_2_nomod',
                    'entity_set_art_3_nomod',
                    'entity_set_tints',
                    'entity_set_workshop_lights',
                }

                for i = 1, #list do
                    if IsInteriorEntitySetActive(interiorId, list[i]) then
                        DeactivateInteriorEntitySet(interiorId, list[i])
                    end
                end

                RefreshInterior(interiorId)
            end,

            LoadDefault = function()
                local interiorId = 286721
                local list = {
                    { name = 'entity_set_workshop_wall', type = 'wall' },
                }

                for i = 1, #list do
                    if not IsInteriorEntitySetActive(interiorId, list[i].name) then
                        ActivateInteriorEntitySet(interiorId, list[i].name)
                    end

                    if list[i].color then
                        SetInteriorEntitySetColor(interiorId, list[i].name, list[i].color)
                    end
                end

                RefreshInterior(interiorId)
            end,

            Purchasable = {
                ['Walls Color'] = {
                    { label = 'None', name = '', price = 20000, type = 'wall_tint' },
                    { label = 'Charcoal', name = 'entity_set_tints', price = 20000, type = 'wall_tint', color = 0 },
                    { label = 'Sage', name = 'entity_set_tints', price = 20000, type = 'wall_tint', color = 1 },
                    { label = 'Green', name = 'entity_set_tints', price = 20000, type = 'wall_tint', color = 2 },
                    { label = 'Gray', name = 'entity_set_tints', price = 20000, type = 'wall_tint', color = 3 },
                    { label = 'Purple', name = 'entity_set_tints', price = 20000, type = 'wall_tint', color = 4 },
                    { label = 'Red', name = 'entity_set_tints', price = 20000, type = 'wall_tint', color = 5 },
                    { label = 'Brown', name = 'entity_set_tints', price = 20000, type = 'wall_tint', color = 6 },
                    { label = 'Ash', name = 'entity_set_tints', price = 20000, type = 'wall_tint', color = 7 },
                    { label = 'Moss', name = 'entity_set_tints', price = 20000, type = 'wall_tint', color = 8 },
                },
                ['Wall Decoration'] = {
                    { label = 'None', name = '', price = 20000, type = 'wall_decoration' },
                    { label = 'Option 1', name = 'entity_set_wallpaper_01', price = 20000, type = 'wall_decoration' },
                    { label = 'Option 2', name = 'entity_set_wallpaper_02', price = 20000, type = 'wall_decoration' },
                    { label = 'Option 3', name = 'entity_set_wallpaper_03', price = 20000, type = 'wall_decoration' },
                    { label = 'Option 4', name = 'entity_set_wallpaper_04', price = 20000, type = 'wall_decoration' },
                    { label = 'Option 5', name = 'entity_set_wallpaper_05', price = 20000, type = 'wall_decoration' },
                    { label = 'Option 6', name = 'entity_set_wallpaper_06', price = 20000, type = 'wall_decoration' },
                    { label = 'Option 7', name = 'entity_set_wallpaper_07', price = 20000, type = 'wall_decoration' },
                    { label = 'Option 8', name = 'entity_set_wallpaper_08', price = 20000, type = 'wall_decoration' },
                    { label = 'Option 9', name = 'entity_set_wallpaper_09', price = 20000, type = 'wall_decoration' },
                },
                ['Wall Art'] = {
                    { label = 'None', name = '', price = 20000, type = 'wall_art' },
                    { label = 'Option 1', name = 'entity_set_art_1', price = 20000, type = 'wall_art' },
                    { label = 'Option 2', name = 'entity_set_art_2', price = 20000, type = 'wall_art' },
                    { label = 'Option 3', name = 'entity_set_art_3', price = 20000, type = 'wall_art' },
                },
            }
        }
    },

    ['hangar'] = {
        interiorId = 260353,
        ipl = 'sm_smugdlc_interior_placement_interior_0_smugdlc_int_01_milo_',
        insideSpawn = vec4(-1267.276, -2964.538, -48.490, 180.641),
        customizationMenu = vec3(-1244.766, -3013.324, -42.888),
        Vehicles = {
            [1] = {
                vec4(-1266.889, -3013.280, -48.490, 181.882)
            }
        },
        Customization = {
            Default = {
                [1] = {
                    { name = 'set_tint_shell', color = 1, type = 'tint' },
                    { name = 'set_crane_tint', color = 1, type = 'crane' },
                    { name = 'set_floor_2', type = 'floor' },
                    { name = 'set_floor_decal_1', color = 1, type = 'floor_decal' },
                    { name = 'set_office_basic', type = 'office' },
                    { name = 'set_bedroom_modern', type = 'bedroom' },
                    { name = 'set_bedroom_tint', color = 1, type = 'bedroom_tint' },
                    { name = 'set_bedroom_blinds_open', type = 'blinds' },
                }
            },

            Purchasable = {
                ['Floor'] = {
                    { label = 'Floor 1', name = 'set_floor_1', price = 150000, type = 'floor' },
                    { label = 'Floor 2', name = 'set_floor_2', price = 150000, type = 'floor' },
                },
                ['Floor Decal'] = {
                    { label = 'Floor Decal 1', name = 'set_floor_decal_1', price = 150000, type = 'floor_decal' },
                    { label = 'Floor Decal 2', name = 'set_floor_decal_2', price = 150000, type = 'floor_decal' },
                    { label = 'Floor Decal 3', name = 'set_floor_decal_3', price = 150000, type = 'floor_decal' },
                    { label = 'Floor Decal 4', name = 'set_floor_decal_4', price = 150000, type = 'floor_decal' },
                    { label = 'Floor Decal 5', name = 'set_floor_decal_5', price = 150000, type = 'floor_decal' },
                    { label = 'Floor Decal 6', name = 'set_floor_decal_6', price = 150000, type = 'floor_decal' },
                    { label = 'Floor Decal 7', name = 'set_floor_decal_7', price = 150000, type = 'floor_decal' },
                    { label = 'Floor Decal 8', name = 'set_floor_decal_8', price = 150000, type = 'floor_decal' },
                    { label = 'Floor Decal 9', name = 'set_floor_decal_9', price = 150000, type = 'floor_decal' },
                },
                ['Interior Color Sets'] = {
                    { label = 'sable, red, gray', name = 'set_tint_shell', price = 150000, type = 'tint', },
                    { label = 'white, blue, gray', name = 'set_tint_shell', price = 150000, type = 'tint', },
                    { label = 'gray, orange, blue', name = 'set_tint_shell', price = 150000, type = 'tint', },
                    { label = 'gray, blue, orange', name = 'set_tint_shell', price = 150000, type = 'tint', },
                    { label = 'gray, light gray, red', name = 'set_tint_shell', price = 150000, type = 'tint', },
                    { label = 'yellow, gray, light gray', name = 'set_tint_shell', price = 150000, type = 'tint', },
                    { label = 'light Black and white', name = 'set_tint_shell', price = 150000, type = 'tint', },
                    { label = 'dark Black and white', name = 'set_tint_shell', price = 150000, type = 'tint', },
                    { label = 'sable and gray', name = 'set_tint_shell', price = 150000, type = 'tint', },
                },
                ['Ceiling Light'] = {
                    { label = 'None', name = '', price = 150000, type = 'ceiling' },
                    { label = 'Yellow', name = 'set_lighting_hangar_a', price = 150000, type = 'ceiling' },
                    { label = 'Blue', name = 'set_lighting_hangar_b', price = 150000, type = 'ceiling' },
                    { label = 'White', name = 'set_lighting_hangar_c', price = 150000, type = 'ceiling' },
                },
                ['Walls Light'] = {
                    { label = 'None', name = '', price = 150000, type = 'walls' },
                    { label = 'Neutral', name = 'set_lighting_wall_neutral', price = 150000, type = 'walls' },
                    { label = 'Blue', name = 'set_lighting_wall_tint01', price = 150000, type = 'walls' },
                    { label = 'Orange', name = 'set_lighting_wall_tint02', price = 150000, type = 'walls' },
                    { label = 'Light Yellow', name = 'set_lighting_wall_tint03', price = 150000, type = 'walls' },
                    { label = 'Light Yellow 2', name = 'set_lighting_wall_tint04', price = 150000, type = 'walls' },
                    { label = 'Dimmed', name = 'set_lighting_wall_tint05', price = 150000, type = 'walls' },
                    { label = 'Strong Yellow', name = 'set_lighting_wall_tint06', price = 150000, type = 'walls' },
                    { label = 'White', name = 'set_lighting_wall_tint07', price = 150000, type = 'walls' },
                    { label = 'Light Green', name = 'set_lighting_wall_tint08', price = 150000, type = 'walls' },
                    { label = 'Yellow', name = 'set_lighting_wall_tint09', price = 150000, type = 'walls' },
                },
                ['Fake Lights'] = {
                    { label = 'None', name = 'set_lighting_tint_props', price = 150000, type = 'fakelight' },
                    { label = 'Yellow', name = 'set_lighting_tint_props', price = 150000, type = 'fakelight' },
                    { label = 'Blue', name = 'set_lighting_tint_props', price = 150000, type = 'fakelight' },
                    { label = 'White', name = 'set_lighting_tint_props', price = 150000, type = 'fakelight' },
                },
                ['Mod Area'] = {
                    { label = 'On', name = 'set_modarea', price = 150000, type = 'modarea' },
                    { label = 'Off', name = '', price = 5000, type = 'modarea' },
                    { label = 'sable, red, gray', name = 'set_modarea', price = 150000, type = 'modarea', color = 1 },
                    { label = 'white, blue, gray', name = 'set_modarea', price = 150000, type = 'modarea', color = 2 },
                    { label = 'gray, orange, blue', name = 'set_modarea', price = 150000, type = 'modarea', color = 3 },
                    { label = 'gray, blue, orange', name = 'set_modarea', price = 150000, type = 'modarea', color = 4 },
                    { label = 'gray, light gray, red', name = 'set_modarea', price = 150000, type = 'modarea', color = 5 },
                    { label = 'yellow, gray, light gray', name = 'set_modarea', price = 150000, type = 'modarea', color = 6 },
                    { label = 'light Black and white', name = 'set_modarea', price = 150000, type = 'modarea', color = 7 },
                    { label = 'dark Black and white', name = 'set_modarea', price = 150000, type = 'modarea', color = 8 },
                    { label = 'sable and gray', name = 'set_modarea', price = 150000, type = 'modarea', color = 9 },
                },
                ['Crane'] = {
                    { label = 'On', name = 'set_crane_tint', price = 150000, type = 'crane' },
                    { label = 'Off', name = '', price = 5000, type = 'crane' },
                    { label = 'Yellow', name = 'set_crane_tint', price = 150000, type = 'crane', color = 1 },
                    { label = 'Red/Yellow', name = 'set_crane_tint', price = 150000, type = 'crane', color = 2 },
                    { label = 'Orange', name = 'set_crane_tint', price = 150000, type = 'crane', color = 3 },
                    { label = 'Dark Gray', name = 'set_crane_tint', price = 150000, type = 'crane', color = 7 },
                    { label = 'Snow White', name = 'set_crane_tint', price = 150000, type = 'crane', color = 8 },
                    { label = 'Dark White', name = 'set_crane_tint', price = 150000, type = 'crane', color = 9 },
                },
            },

            DeactivateInterior = function()
                local interiorId = 260353
                local list = {
                    'set_floor_decal_1',
                    'set_floor_decal_2',
                    'set_floor_decal_3',
                    'set_floor_decal_4',
                    'set_floor_decal_5',
                    'set_floor_decal_6',
                    'set_floor_decal_7',
                    'set_floor_decal_8',
                    'set_floor_decal_9',
                    'set_floor_1',
                    'set_floor_2',
                    'set_tint_shell',
                    'set_office_modern',
                    'set_bedroom_modern',
                    'set_modarea',
                    'set_office_basic',
                    'set_office_traditional',
                    'set_bedroom_traditional',
                    'set_bedroom_blinds_closed',
                    'set_bedroom_blinds_open',
                    'set_bedroom_tint',
                    'set_crane_tint',
                    'set_lighting_wall_tint02',
                    'set_lighting_wall_tint01',
                    'set_lighting_hangar_c',
                    'set_lighting_hangar_b',
                    'set_lighting_hangar_a',
                    'set_lighting_wall_tint03',
                    'set_lighting_wall_tint04',
                    'set_lighting_wall_tint05',
                    'set_lighting_wall_tint06',
                    'set_lighting_wall_tint07',
                    'set_lighting_wall_tint08',
                    'set_lighting_wall_tint09',
                    'set_lighting_wall_neutral',
                    'set_lighting_tint_props',
                    'set_bedroom_clutter'
                }

                for i = 1, #list do
                    if IsInteriorEntitySetActive(interiorId, list[i]) then
                        DeactivateInteriorEntitySet(interiorId, list[i])
                    end
                end

                RefreshInterior(interiorId)
            end,

            LoadDefault = function()
                -- https://github.com/Bob74/bob74_ipl/blob/master/dlc_smuggler/hangar.lua
                local interiorId = 260353
                local list = {
                    { name = 'set_tint_shell', color = 1, type = 'tint' },
                    { name = 'set_crane_tint', color = 1, type = 'crane' },
                    { name = 'set_floor_2', type = 'floor' },
                    { name = 'set_floor_decal_1', color = 1, type = 'floor_decal' },
                    { name = 'set_office_basic', type = 'office' },
                    { name = 'set_bedroom_modern', type = 'bedroom' },
                    { name = 'set_bedroom_tint', color = 1, type = 'bedroom_tint' },
                    { name = 'set_bedroom_blinds_open', type = 'blinds' },
                }

                for i = 1, #list do
                    if not IsInteriorEntitySetActive(interiorId, list[i].name) then
                        ActivateInteriorEntitySet(interiorId, list[i].name)
                    end

                    if list[i].color then
                        SetInteriorEntitySetColor(interiorId, list[i].name, list[i].color)
                    end
                end

                RefreshInterior(interiorId)
            end
        }
    },

    ['low_end'] = {
        interiorId = 149249,
        insideSpawn = vec4(178.716, -1005.483, -99.000, 92.588),
        Vehicles = {
            [1] = {
                vec4(175.005, -1003.545, -99.412, 180.654),
                vec4(171.057, -1003.645, -99.410, 180.652),
            }
        },
    },

    ['medium'] = {
        interiorId = 148737,
        insideSpawn = vec4(207.188, -999.216, -99.000, 89.841),
        Vehicles = {
            [1] = {
                vec4(194.272, -998.072, -99.412, 180.659),
                vec4(198.538, -998.066, -99.410, 179.261),
                vec4(202.644, -998.127, -99.410, 179.356),
                vec4(194.435, -1003.745, -99.410, 179.297),
                vec4(198.443, -1003.765, -99.410, 179.412),
                vec4(202.531, -1003.639, -99.410, 178.618)
            }
        },
    },

    ['ceo'] = {
        interiorId = 253441,
        ipl = 'imp_dt1_02_cargarage_a',
        insideSpawn = vec4(-197.995, -580.594, 136.001, 295.310),
        customizationMenu = vec3(-197.334, -577.085, 136.000),
        Customization = {
            Purchasable = {
                ['Interior'] = {
                    { label = 'Interior 1', name = 'garage_decor_01', price = 150000, type = 'interior' },
                    { label = 'Interior 2', name = 'garage_decor_02', price = 285000, type = 'interior' },
                    { label = 'Interior 3', name = 'garage_decor_03', price = 415000, type = 'interior' },
                    { label = 'Interior 4', name = 'garage_decor_04', price = 500000, type = 'interior' },
                },
                ['Lighting'] = {
                    { label = 'Lighting 1', name = 'lighting_option01', price = 75000, type = 'light' },
                    { label = 'Lighting 2', name = 'lighting_option02', price = 81500, type = 'light' },
                    { label = 'Lighting 3', name = 'lighting_option03', price = 85000, type = 'light' },
                    { label = 'Lighting 4', name = 'lighting_option04', price = 87500, type = 'light' },
                    { label = 'Lighting 5', name = 'lighting_option05', price = 92500, type = 'light' },
                    { label = 'Lighting 6', name = 'lighting_option06', price = 99500, type = 'light' },
                    { label = 'Lighting 7', name = 'lighting_option07', price = 105000, type = 'light' },
                    { label = 'Lighting 8', name = 'lighting_option08', price = 127500, type = 'light' },
                    { label = 'Lighting 9', name = 'lighting_option09', price = 150000, type = 'light' },
                },
                ['Signage'] = {
                    { label = 'Signage 1', name = 'numbering_style01_n1', price = 50000, type = 'signage' },
                    { label = 'Signage 2', name = 'numbering_style02_n1', price = 62000, type = 'signage' },
                    { label = 'Signage 3', name = 'numbering_style03_n1', price = 75000, type = 'signage' },
                    { label = 'Signage 4', name = 'numbering_style04_n1', price = 87500, type = 'signage' },
                    { label = 'Signage 5', name = 'numbering_style05_n1', price = 100000, type = 'signage' },
                    { label = 'Signage 6', name = 'numbering_style06_n1', price = 132000, type = 'signage' },
                    { label = 'Signage 7', name = 'numbering_style07_n1', price = 165000, type = 'signage' },
                    { label = 'Signage 8', name = 'numbering_style08_n1', price = 197000, type = 'signage' },
                    { label = 'Signage 9', name = 'numbering_style09_n1', price = 250000, type = 'signage' },
                }
            },

            Default = {
                [1] = {
                    { name = 'garage_decor_01', type = 'interior' },
                    { name = 'lighting_option01', type = 'light' },
                    { name = 'numbering_style01_n1', type = 'signage' },
                }
            },

            DeactivateInterior = function()
                local interiorId = 253441
                local list = {
                    'garage_decor_01',
                    'garage_decor_02',
                    'garage_decor_03',
                    'garage_decor_04',
                    'lighting_option01',
                    'lighting_option02',
                    'lighting_option03',
                    'lighting_option04',
                    'lighting_option05',
                    'lighting_option06',
                    'lighting_option07',
                    'lighting_option08',
                    'lighting_option09',
                    'numbering_style01_n1',
                    'numbering_style02_n1',
                    'numbering_style03_n1',
                    'numbering_style04_n1',
                    'numbering_style05_n1',
                    'numbering_style06_n1',
                    'numbering_style07_n1',
                    'numbering_style08_n1',
                    'numbering_style09_n1',
                }

                for i = 1, #list do
                    if IsInteriorEntitySetActive(interiorId, list[i]) then
                        DeactivateInteriorEntitySet(interiorId, list[i])
                    end
                end

                RefreshInterior(interiorId)
            end,

            LoadDefault = function() -- loading this when in preview
                local interiorId = 253441
                local list = {
                    'garage_decor_01',
                    'lighting_option01',
                    'numbering_style01_n1'
                }

                for i = 1, #list do
                    if not IsInteriorEntitySetActive(interiorId, list[i]) then
                        ActivateInteriorEntitySet(interiorId, list[i])
                    end
                end

                RefreshInterior(interiorId)
            end
        },
        Vehicles = {
            [1] = {
                vec4(-174.061, -586.010, 135.294, 55.230),
                vec4(-172.763, -581.448, 135.617, 93.340),
                vec4(-174.008, -575.509, 135.591, 133.238),
                vec4(-177.363, -572.505, 135.590, 153.034),
                vec4(-182.227, -571.430, 135.590, 187.091),
                vec4(-187.448, -573.177, 135.590, 219.976),
                vec4(-190.896, -576.068, 135.590, 241.051),
                vec4(-192.936, -580.709, 135.590, 263.572),

                vec4(-173.663, -586.285, 140.934, 55.232),
                vec4(-171.772, -581.433, 140.934, 96.429),
                vec4(-173.565, -575.966, 140.934, 122.879),
                vec4(-177.441, -572.685, 140.934, 150.869),
                vec4(-182.154, -571.731, 140.934, 184.236),
                vec4(-186.981, -573.337, 140.934, 218.274),
                vec4(-190.346, -576.434, 140.934, 241.441),
                vec4(-192.474, -580.448, 140.933, 269.140),

                vec4(-173.663, -586.285, 146.280, 55.232),
                vec4(-171.772, -581.433, 146.283, 96.429),
                vec4(-172.923, -577.460, 146.280, 119.011),
                vec4(-175.864, -573.947, 146.280, 141.728),
                vec4(-180.677, -572.477, 146.279, 176.112),
                vec4(-186.206, -572.990, 146.279, 199.255),
                vec4(-190.747, -575.410, 146.280, 236.287),
                vec4(-192.806, -579.732, 146.279, 260.655)

            }
        },
    },

    ['drugwar'] = {
        interiorId = 290561,
        ipl = 'xm3_garage_fix',
        insideSpawn = vec4(528.401, -2638.002, -49.000, 97.635),
        customizationMenu = vec3(525.576, -2638.753, -49.000),
        Customization = {
            Purchasable = {
                ['Tint'] = {
                    { label = 'White', price = 75000, name = 'entity_set_tint_01', type = 'tint', color = 1 },
                    { label = 'Gray', price = 75000, name = 'entity_set_tint_01', type = 'tint', color = 2 },
                    { label = 'Black', price = 75000, name = 'entity_set_tint_01', type = 'tint', color = 3 },
                    { label = 'Purple', price = 75000, name = 'entity_set_tint_01', type = 'tint', color = 4 },
                    { label = 'Orange', price = 75000, name = 'entity_set_tint_01', type = 'tint', color = 5 },
                    { label = 'Yellow', price = 75000, name = 'entity_set_tint_01', type = 'tint', color = 6 },
                    { label = 'Blue', price = 75000, name = 'entity_set_tint_01', type = 'tint', color = 7 },
                    { label = 'Red', price = 75000, name = 'entity_set_tint_01', type = 'tint', color = 8 },
                    { label = 'Green', price = 75000, name = 'entity_set_tint_01', type = 'tint', color = 9 },
                    { label = 'Vintage Blue', price = 75000, name = 'entity_set_tint_01', type = 'tint', color = 10 },
                    { label = 'Vintage Red', price = 75000, name = 'entity_set_tint_01', type = 'tint', color = 11 },
                    { label = 'Vintage Green', price = 75000, name = 'entity_set_tint_01', type = 'tint', color = 12 },
                },
                ['Interior'] = {
                    { label = 'Immaculate', name = 'entity_set_shell_01', price = 137000, type = 'interior' },
                    { label = 'Industrial', name = 'entity_set_shell_02', price = 180000, type = 'interior' },
                    { label = 'Indulgent', name = 'entity_set_shell_03', price = 265000, type = 'interior' },
                }
            },
            Default = {
                [1] = {
                    { name = 'entity_set_shell_01', type = 'interior' },
                    { name = 'entity_set_numbers_01' },
                    { name = 'entity_set_tint_01', type = 'tint', color = 1 }
                },
                [2] = {
                    { name = 'entity_set_shell_01', type = 'interior' },
                    { name = 'entity_set_numbers_02' },
                    { name = 'entity_set_tint_01', type = 'tint', color = 1 }
                },
                [3] = {
                    { name = 'entity_set_shell_01', type = 'interior' },
                    { name = 'entity_set_numbers_03' },
                    { name = 'entity_set_tint_01', type = 'tint', color = 1 }
                },
                [4] = {
                    { name = 'entity_set_shell_01', type = 'interior' },
                    { name = 'entity_set_numbers_04' },
                    { name = 'entity_set_tint_01', type = 'tint', color = 1 }
                },
                [5] = {
                    { name = 'entity_set_shell_01', type = 'interior' },
                    { name = 'entity_set_numbers_05' },
                    { name = 'entity_set_tint_01', type = 'tint', color = 1 }
                }
            },

            DeactivateInterior = function()
                local interiorId = 290561
                local list = {
                    'entity_set_shell_01',
                    'entity_set_shell_02',
                    'entity_set_shell_03',
                    'entity_set_numbers_01',
                    'entity_set_numbers_02',
                    'entity_set_numbers_03',
                    'entity_set_numbers_04',
                    'entity_set_numbers_05',
                    'entity_set_tint_01'
                }

                for i = 1, #list do
                    if IsInteriorEntitySetActive(interiorId, list[i]) then
                        DeactivateInteriorEntitySet(interiorId, list[i])
                    end
                end

                RefreshInterior(interiorId)
            end,

            LoadDefault = function() -- loading this when in preview
                local interiorId = 290561
                local list = {
                    'entity_set_shell_01',
                    'entity_set_numbers_01'
                }

                for i = 1, #list do
                    if not IsInteriorEntitySetActive(interiorId, list[i]) then
                        ActivateInteriorEntitySet(interiorId, list[i])
                    end
                end

                if not IsInteriorEntitySetActive(interiorId, 'entity_set_tint_01') then
                    ActivateInteriorEntitySet(interiorId, 'entity_set_tint_01')
                end

                SetInteriorEntitySetColor(interiorId, 'entity_set_tint_01', 1)
                RefreshInterior(interiorId)
            end
        },
        Vehicles = {
            [1] = { -- floor
                vec4(523.858, -2633.473, -49.420, 68.767),
                vec4(524.019, -2628.844, -49.421, 68.777),
                vec4(524.191, -2623.912, -49.420, 66.021),
                vec4(524.111, -2619.902, -49.420, 67.442),
                vec4(524.217, -2615.142, -49.420, 63.122),
                vec4(515.537, -2633.750, -49.420, 297.266),
                vec4(515.128, -2629.531, -49.420, 291.997),
                vec4(515.419, -2625.219, -49.420, 291.996),
                vec4(515.221, -2621.091, -49.420, 294.086),
                vec4(515.287, -2616.303, -49.421, 310.113)
            },
            [2] = {
                vec4(523.858, -2633.473, -49.420, 68.767),
                vec4(524.019, -2628.844, -49.421, 68.777),
                vec4(524.191, -2623.912, -49.420, 66.021),
                vec4(524.111, -2619.902, -49.420, 67.442),
                vec4(524.217, -2615.142, -49.420, 63.122),
                vec4(515.537, -2633.750, -49.420, 297.266),
                vec4(515.128, -2629.531, -49.420, 291.997),
                vec4(515.419, -2625.219, -49.420, 291.996),
                vec4(515.221, -2621.091, -49.420, 294.086),
                vec4(515.287, -2616.303, -49.421, 310.113)
            },
            [3] = {
                vec4(523.858, -2633.473, -49.420, 68.767),
                vec4(524.019, -2628.844, -49.421, 68.777),
                vec4(524.191, -2623.912, -49.420, 66.021),
                vec4(524.111, -2619.902, -49.420, 67.442),
                vec4(524.217, -2615.142, -49.420, 63.122),
                vec4(515.537, -2633.750, -49.420, 297.266),
                vec4(515.128, -2629.531, -49.420, 291.997),
                vec4(515.419, -2625.219, -49.420, 291.996),
                vec4(515.221, -2621.091, -49.420, 294.086),
                vec4(515.287, -2616.303, -49.421, 310.113)
            },
            [4] = {
                vec4(523.858, -2633.473, -49.420, 68.767),
                vec4(524.019, -2628.844, -49.421, 68.777),
                vec4(524.191, -2623.912, -49.420, 66.021),
                vec4(524.111, -2619.902, -49.420, 67.442),
                vec4(524.217, -2615.142, -49.420, 63.122),
                vec4(515.537, -2633.750, -49.420, 297.266),
                vec4(515.128, -2629.531, -49.420, 291.997),
                vec4(515.419, -2625.219, -49.420, 291.996),
                vec4(515.221, -2621.091, -49.420, 294.086),
                vec4(515.287, -2616.303, -49.421, 310.113)
            },
            [5] = {
                vec4(523.858, -2633.473, -49.420, 68.767),
                vec4(524.019, -2628.844, -49.421, 68.777),
                vec4(524.191, -2623.912, -49.420, 66.021),
                vec4(524.111, -2619.902, -49.420, 67.442),
                vec4(524.217, -2615.142, -49.420, 63.122),
                vec4(515.537, -2633.750, -49.420, 297.266),
                vec4(515.128, -2629.531, -49.420, 291.997),
                vec4(515.419, -2625.219, -49.420, 291.996),
                vec4(515.221, -2621.091, -49.420, 294.086),
                vec4(515.287, -2616.303, -49.421, 310.113)
            },
        },
    }
}
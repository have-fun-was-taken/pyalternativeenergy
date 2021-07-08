RECIPE {
    type = 'recipe',
    name = 'tidal-mk01',
    energy_required = 0.5,
    enabled = true,
    ingredients = {{'pipe', 20}},
    results = {{'tidal-mk01', 1}}
}

ITEM {
    type = 'item',
    name = 'tidal-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/tidal-mk01.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk01',
    order = 'd',
    place_result = 'tidal-mk01',
    stack_size = 10
}

ENTITY {
    type = 'electric-energy-interface',
    name = 'tidal-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/tidal-mk01.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    -- minable = {mining_time = 0.5, result = "tidal-mk01"},
    fast_replaceable_group = 'tidal-mk01',
    max_health = 400,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-3.3, -5.3}, {3.3, 5.3}},
    selection_box = {{-3.5, -5.5}, {3.5, 5.5}},
    match_animation_speed_to_activity = false,
    energy_source = {
        type = 'electric',
        usage_priority = 'primary-output',
        buffer_capacity = '500MJ',
        output_flow_limit = '50MW',
        render_no_power_icon = false
    },
    energy_production = '50MW',
    energy_usage = '0kW',
    animations = {
        north = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/terrain.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(0, 80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/raw-half.png',
                    width = 224,
                    height = 192,
                    --priority = 'high',
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/mask.png',
                    width = 224,
                    height = 192,
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/turbine.png',
                    width = 224,
                    height = 224,
                    --priority = 'high',
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    shift = util.by_pixel(0, 80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/ao-half.png',
                    width = 224,
                    height = 192,
                    --priority = 'high',
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/sh-half.png',
                    width = 224,
                    height = 192,
                    --priority = 'high',
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/sh-down.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, 80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/l-land.png',
                    width = 224,
                    height = 192,
                    --priority = 'high',
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    draw_as_glow = true,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/l-turbines.png',
                    width = 224,
                    height = 224,
                    --priority = 'high',
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    draw_as_glow = true,
                    shift = util.by_pixel(0, 80),
                },

            }
        },
        east = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/terrain.png',
                    width = 224,
                    height = 256,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(96, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/raw-half.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(-112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/mask.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(-112, -16),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/turbine.png',
                    width = 224,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    shift = util.by_pixel(96, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/ao.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(-112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/ao-turbine.png',
                    width = 224,
                    height = 256,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(96, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/sh.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = util.by_pixel(-112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/sh-turbine.png',
                    width = 224,
                    height = 256,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(96, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/l-land.png',
                    width = 192,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    draw_as_glow = true,
                    shift = util.by_pixel(-112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/l-turbines.png',
                    width = 224,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    draw_as_glow = true,
                    animation_speed = 1/5,
                    shift = util.by_pixel(96, -16),
                },
            }
        },
        south = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/terrain.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(0, -80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/raw.png',
                    width = 224,
                    height = 192,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, 128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/mask.png',
                    width = 224,
                    height = 192,
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, 128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/turbine.png',
                    width = 224,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    shift = util.by_pixel(0, -80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/ao.png',
                    width = 224,
                    height = 192,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, 128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/sh.png',
                    width = 224,
                    height = 192,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, 128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/sh-down.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, -80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/l-land.png',
                    width = 224,
                    height = 192,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    draw_as_glow = true,
                    shift = util.by_pixel(-5, 132),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/l-turbine.png',
                    width = 224,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    draw_as_glow = true,
                    shift = util.by_pixel(-2, -80),
                },
            }
        },
        west = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/terrain.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(-96, -0),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/raw.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/mask.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(112, -16),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/turbine.png',
                    width = 224,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    shift = util.by_pixel(-96, -0),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/ao.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/ao-turb.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(-96, 0),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/sh.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = util.by_pixel(112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/sh-down.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(-96, -0),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/l-land.png',
                    width = 192,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    draw_as_glow = true,
                    shift = util.by_pixel(112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/l-turbines.png',
                    width = 224,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    draw_as_glow = true,
                    animation_speed = 1/5,
                    shift = util.by_pixel(-96, -0),
                },
            },
        },
    }
}

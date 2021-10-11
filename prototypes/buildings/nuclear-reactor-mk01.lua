RECIPE {
    type = "recipe",
    name = "nuclear-reactor-mk01",
    energy_required = 5,
    enabled = true,
    ingredients = {
        {"iron-plate", 1},
    },
    results = {
        {"nuclear-reactor-mk01", 1}
    }
}

ITEM {
    type = "item",
    name = "nuclear-reactor-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-reactor-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk01",
    order = "a",
    place_result = "nuclear-reactor-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "nuclear-reactor-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-reactor-mk01.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nuclear-reactor-mk01"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"speed"},
    crafting_categories = {"solar-tower"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.0,
    },
    energy_usage = "400kW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk01/off.png",
                width = 352,
                height = 576,
                frame_count = 1,
                shift = util.by_pixel(0, -112)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk01/sh.png",
                width = 416,
                height = 320,
                frame_count = 1,
                shift = util.by_pixel(32, 16),
                draw_as_shadow = true,
            },
        }
    },
    working_visualisations = {
        {
            effect = "uranium-glow",
            fadeout = true,
            light = {intensity = 2, size = 20, shift = {0.0, 0.0}, color = {r = 0.584, g = 0.8, b = 1.0}}
        },
        {
            north_position = util.by_pixel(-0, -208),
            west_position = util.by_pixel(-0, -208),
            south_position = util.by_pixel(-0, -208),
            east_position = util.by_pixel(-0, -208),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk01/l.png",
                frame_count = 20,
                line_length = 5,
                width = 352,
                height = 384,
                animation_speed = 0.3,
                draw_as_glow = true,
                effect = "uranium-glow",
                fadeout = true,
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 6.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, 6.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, 6.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, -6.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.0, -6.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/nuclear-reactor-mk01.ogg", volume = 0.7},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/nuclear-reactor-mk01.ogg", volume = 0.1},
        apparent_volume = 2.5
    }
  }

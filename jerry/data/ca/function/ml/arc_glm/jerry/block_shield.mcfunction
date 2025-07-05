
summon minecraft:warden ~ ~ ~ {                 \
    attributes: [                               \
        {                                       \
            id: "minecraft:scale",              \
            base: 0.04f                         \
        }                                       \
    ],                                          \
    active_effects: [                           \
        {                                       \
            id: "minecraft:invisibility",       \
            duration: -1,                       \
            show_particles: false,              \
            amplifier: 0b                       \
        }                                       \
    ],                                          \
    DeathLootTable: "",                         \
    UUID: [I;0,0,0,48],                         \
    Silent: true,                               \
    NoAI: true                                  \
}

damage @s 0.0000001 minecraft:mob_attack by 00000000-0000-0000-0000-000000000030

tp 00000000-0000-0000-0000-000000000030 ~ ~-1000 ~
kill 00000000-0000-0000-0000-000000000030

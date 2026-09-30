Config = {}
Config.UseTarget = false -- Defina como verdadeiro para usar o Terceiro Olho, caso contrário, falso
Config.Webhook = ""

-- Se verdadeiro, exibe a sobreposição da câmera corporal no usuário da tela da câmera corporal quando a câmera corporal está ligada
Config.SelfOverlay = true
Config.CustomImage = "xion.png"
Config.PlayBeep = true
Config.BeepSound = "beepbeep.wav"
Config.Jobs = {
    ['Policia']  = {job = "Policia", display = "Policia", grade = 0},
}

-- The Locations to access Body Cam menu, job is the required job from Config.Jobs above
Config.Locations = {
    { coords = vector3(438.97,852.35,199.22), job = "Policia" },
    { coords = vector3(445.56,845.98,199.22), job = "Policia" },  
    { coords = vector3(434.97,845.4,199.22), job = "Policia" },
    { coords = vector3(433.57,840.48,199.22), job = "Policia" },
}

-- -- -- Box zones if using Config.Target = true to access Body Cam menu, job is the required job from Config.Jobs above
-- Config.Targets = {
--     { coords = vector3(386.93, 792.48, 187.69), width = 1.5, height = 1.5, job = "Police"}, 
--     { coords = vector3(447.97, -973.38, 30.69), width = 1.5, height = 1.5, job = "Police" },  
--     { coords = vector3(437.03, -996.21, 30.69), width = 1.5, height = 1.5, job = "Police" },
-- }
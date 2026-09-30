Config = {
    -- Altere o idioma do menu aqui!
    -- Obrigado àqueles que forneceram traduções.
    -- Se você quiser fornecer traduções ou ajudar a corrigi-las, junte-se ao nosso Discord!
    -- Verifique os códigos de idioma abaixo para alterar o MenuLanguage
    MenuLanguage = 'pt',
    -- Defina como true para ativar algumas impressões extras
    DebugDisplay = false,
    -- Defina como false se você tiver outra coisa no X, e então apenas use /e c para cancelar emotes.
    EnableCancelKeybind = false,
    CancelEmoteKey = 'x', -- Obtenha a string do botão aqui https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- Defina como true se você quiser desarmar o jogador quando ele executar um emote.
    DisarmPlayer = false,
    -- Defina como true se você quiser permitir que as pessoas deem socos enquanto os emotes estão sendo executados
    AllowPunching = false,
    -- Defina isso se você realmente quiser desativar emotes em carros, a partir da versão 1.7.2 eles só reproduzem a parte superior do corpo se estiver em um veículo
    AllowedInCars = true,
    -- Você pode desativar o menu aqui / alterar a tecla de atalho. Atualmente está definido como F4
    -- A tecla de atalho que você definir aqui será do lado do servidor para novos jogadores. jogadores existentes podem definir as suas próprias nas configurações de teclas de atalho do menu ESC
    MenuKeybindEnabled = true,
    MenuKeybind = 'f4', -- Obtenha a string do botão aqui https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- Você pode desativar a tecla de atalho do emote favorito aqui.
    FavKeybindEnabled = true,
    FavKeybind = 'capital', -- Obtenha a string do botão aqui https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- Você pode alterar a imagem de cabeçalho do menu aqui
    -- Use uma imagem de 512 x 128!
    -- Observe que isso pode causar um problema de a imagem ficar presa nas telas das pessoas
    CustomMenuEnabled = true,
    MenuImage = "", ----[URLs de banners personalizados do IMGUR ou GIPHY vão aqui ]---
    -- Você pode alterar a imagem do menu colando um link acima. Deve ter a mesma largura e comprimento
    -- Você pode alterar o nome do menu aqui ou deixá-lo em branco para remover o texto na frente dos banners personalizados
    MenuTitle = "",
    -- Você pode alterar a posição do menu aqui
    MenuPosition = "right", -- (left, right)
    -- Você pode ativar ou desativar a tecla de atalho Ragdoll aqui.
    RagdollEnabled = false,
    RagdollKeybind = 'u', -- Obtenha a string do botão aqui https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- Você pode ativar ou desativar o Ragdoll como alternância aqui. Só funciona se RagdollEnabled estiver definido como true.
    RagdollAsToggle = true,
    -- Você pode desativar o menu de Expressões Faciais aqui.
    ExpressionsEnabled = true,
    -- Salva o estilo de expressão para o cliente e os aplica ao entrar
    PersistentExpression = true,
    -- Você pode desativar o menu de Estilos de Caminhada aqui.
    WalkingStylesEnabled = true,
    -- Salva os estilos de caminhada para o cliente e os aplica ao entrar
    PersistentWalk = true,
    -- Você pode desativar os Emotes Compartilhados aqui.
    SharedEmotesEnabled = true,
    -- Se você importou o SQL, ative isso para ativar a vinculação de teclas.
    SqlKeybinding = true,
    -- Se você não gosta das notificações do GTA, pode desativá-las aqui para ter mensagens no chat.
    NotificationsAsChatMessage = false,
    -- Usado para algumas coisas dependentes do framework. Valores aceitos: "qb-core", false
    Framework = false,
    -- Você pode desativar os Emotes Adultos aqui.
    AdultEmotesDisabled = false,
    -- Você pode desativar os Emotes de Animais aqui.
    AnimalEmotesEnabled = false,
    -- Usado para ativar ou desativar o recurso de pesquisa no menu.
    Search = true,
    -- Você pode desativar o levantar as mãos aqui / alterar a tecla de atalho. Atualmente está definido como Y
    HandsupEnabled = false,
    HandsupKeybind = 'Y', -- Obtenha a string do botão aqui https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    HandsupKeybindEnabled = false,
    HandsupKeybindInCarEnabled = false,
    PersistentEmoteAfterHandsup = true, -- Se verdadeiro, você executará o emote que estava executando anteriormente após parar de levantar as mãos.
    -- Você pode desativar o apontar com o dedo aqui / alterar a tecla de atalho. Atualmente está definido como B
    PointingEnabled = false,
    PointingKeybindEnabled = true,
    PointingKeybind = 'B', -- Obtenha a string do botão aqui https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    PointingKeybindInCarEnabled = false,
    PersistentEmoteAfterPointing = true, -- Se verdadeiro, você executará o emote que estava executando anteriormente após parar de apontar.
    -- Se agachar deve ser ativado.
    CrouchEnabled = true,
    CrouchKeybindEnabled = true, -- Se verdadeiro, agachar usará teclas de atalho.
    CrouchKeybind = 'lcontrol', -- A tecla de atalho padrão para agachar, obtenha a string do botão aqui: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    CrouchOverride = false, -- Se verdadeiro, você não entrará no modo furtivo mesmo se a tecla de agachar e a tecla "duck" forem as mesmas.
    -- Se rastejar deve ser ativado.
    CrawlEnabled = true,
    CrawlKeybindEnabled = true, -- Se verdadeiro, rastejar usará teclas de atalho.
    CrawlKeybind = 'rcontrol', -- A tecla de atalho padrão para rastejar, obtenha a string do botão aqui: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- Se ativado, executar um emote cancelará o anterior.
    CancelPreviousEmote = true,
    -- Se desativado, abrir o menu e executar um emote não será possível enquanto estiver nadando
    AllowInWater = true,
    -- Se definido como true, o comando /binoculars será ativado.
    BinocularsEnabled = true,
    -- Se definido como true, você poderá alternar entre diferentes modos de visão nos binóculos
    AllowVisionsToggling = true,
    -- Se definido como true, o comando /newscam será ativado.
    NewscamEnabled = false,
    -- Verificar atualizações
    CheckForUpdates = false,
}

Config.KeybindKeys = {
    ['num4'] = 108,
    ['num5'] = 110,
    ['num6'] = 109,
    ['num7'] = 117,
    ['num8'] = 111,
    ['num9'] = 118
}
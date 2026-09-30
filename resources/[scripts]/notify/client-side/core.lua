RegisterNetEvent("Notify")
AddEventHandler("Notify",function(css,mensagem,tituloOuTimer,timerOpcional)
    
    if css == 'negado' then
        css = 'vermelho'
    elseif css == 'sucesso' then
        css = 'verde'
    elseif css == 'aviso' then
        css = 'amarelo'
    elseif css == 'importante' then
        css = 'azul'
    end

    local timer = timerOpcional or tituloOuTimer or 5000 
    
    SendNUIMessage({ 
        css = css, 
        mensagem = mensagem, 
        timer = timer, 
        notify = true 
    })
end)

// Verifica se o evento atual corresponde ao carregamento do seu grupo de músicas
if (async_load[? "type"] == "audiogroup_load") {
    var _group_id = async_load[? "group_id"];
    
    if (_group_id == agMusica) {
        // Agora que o grupo está na memória, a música tocará normalmente!
    }
}

if (async_load[? "type"] == "audiogroup_load") {
    var _group_id = async_load[? "group_id"];
    
    if (_group_id == agDigitando) {
        // Agora que o grupo está na memória, a música tocará normalmente!
        //typist.sound_per_char(snd_legenda, 1.5, 1.8)
    }
}

if (async_load[? "type"] == "audiogroup_load") {
    var _group_id = async_load[? "group_id"];
    
    
}
var _list = ds_list_create();
var _qtd = instance_place_list(x, y, parEnemy, _list, false);

for (var i = 0; i < ds_list_size(_list); i++)
{
    var _current = ds_list_find_value(_list, i);
    var _exists = array_contains(enemy_list, _current);
    
    if (!_exists)
    {
        array_push(enemy_list, _current);
        
        with (_current)
        {
            if (!dead)
            {
                audio_play_sound(sndAttack, 0, false);
                damage_handler(undefined, other.dmgpoise);
            }
        }
    }
}

ds_list_destroy(_list);

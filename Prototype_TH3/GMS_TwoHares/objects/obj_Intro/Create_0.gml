//states
enum cutSceneStates{
	First,
	Second,
	Third
}
current_state = cutSceneStates.First;

//text
a = 1;
fadeout = 0;

str = "";
print = "";

l = 0;
next = 0;

strings[0] = "Говоришь, никогда не видел снов? Странный ты тип. Быть такого не может... \nНаверное, ты просто их не запоминаешь.";
strings[1] = "Эх, нашел из-за чего париться... Деньги платят и нормально, главное - остаться на плаву. \nЛично я всё больше склоняюсь к выводу, что миром правит не тайная ложа, а явная лажа.";
strings[2] = "Знаешь, жизнь очень странно устроена. Чтобы вылезти из колодца, надо в него упасть. \nХмм.. Еще пивка?";
strings[3] = "Эй! Ты меня слышишь?! Завязывай со всем этим дерьмом, а то доиграешься... ";

obj_Fade.visible = false;


//timer
room_speed = 60;
timer = 0;
timer_enable = false;
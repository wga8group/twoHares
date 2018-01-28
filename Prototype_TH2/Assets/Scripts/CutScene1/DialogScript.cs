using System.Collections;
using System.Collections.Generic;
using UnityEngine;


// Класс участника диалога
// Содержит его имя
public class DialogPerson {

    public string Name;

    public DialogPerson(string name)
    {
        Name = name;
    }
}


// Класс фразы диалога
// Содержит поле персоны, произносящей фразу, и её фразу
public class DialogPhrase {

    public DialogPerson Speaker;
    public string Message;

    public DialogPhrase(DialogPerson person, string msg)
    {
        Speaker = person;
        Message = msg;
    }
}


// Класс диалога
// Каждый диалог имеет свой "тип"
// Содержит список фраз и функцию по добавлению новой фразы
public  class Dialog
{
    public enum DialogType
    {
        FIRST_DIALOG
    }

    public DialogType Type;
    public List<DialogPhrase> Phrases = new List<DialogPhrase>();

    public Dialog(DialogType type)
    {
        Type = type;
    }

    public void AddPhrase(DialogPhrase phrase)
    {
        Phrases.Add(phrase);
    }
}


// Класс всех диалогов в игре
// Чтобы можно было отовсюду обращаться к диалогам
// Содержит список диалогов и функцию добавления диалога
public static class DialogManager {

    public static List<Dialog> Dialogs = new List<Dialog>();

    public static void AddDialog(Dialog dialog)
    {
        Dialogs.Add(dialog);
    }
}


// Класс самого скрипта
// Здесь добавили персону бармена и его монолог
public class DialogScript : MonoBehaviour {
	void Start () {
        DialogPerson barman = new DialogPerson("Бармен:");
        //DialogPerson player = new DialogPerson("Эдик");
  
        Dialog firstDialog = new Dialog(Dialog.DialogType.FIRST_DIALOG);

        firstDialog.AddPhrase(new DialogPhrase(barman, "Говоришь, никогда не видел снов? Странный ты. Еще кружечку?"));
        firstDialog.AddPhrase(new DialogPhrase(barman, "Да я понимаю, у самого босс тот еще мудак. Не дрейфь, мужик, прорвемся. Еще стаканчик?"));
        firstDialog.AddPhrase(new DialogPhrase(barman, "А что жизнь тебе не в кайф, так это поправимо. У меня тут есть, специально для таких случаев!"));
        firstDialog.AddPhrase(new DialogPhrase(barman, "Мужик! Ты че творишь? Мужииик!"));
        
       DialogManager.AddDialog(firstDialog);
    }
}


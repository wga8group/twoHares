using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class DialogPerson {

    public string Name;

    public DialogPerson(string name)
    {
        Name = name;

    }

}

public class DialogPhrase {

    public DialogPerson Speaker;
    public string Message;

    public DialogPhrase(DialogPerson person, string msg)
    {
        Speaker = person;
        Message = msg;
    }

}

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

public static class DialogManager {

    public static List<Dialog> Dialogs = new List<Dialog>();

    public static void AddDialog(Dialog dialog)
    {
        Dialogs.Add(dialog);
    }

}

public class DialogScript : MonoBehaviour {


	void Start () {
        DialogPerson barman = new DialogPerson("Бармен:");
        //DialogPerson player = new DialogPerson("Эдик");

        Dialog firstDialog = new Dialog(Dialog.DialogType.FIRST_DIALOG);

        firstDialog.AddPhrase(new DialogPhrase(barman, "Говоришь, никогда не видел снов? Странный ты. Еще кружечку?"));
        //firstDialog.AddPhrase(new DialogPhrase(player, "ehh"));
        firstDialog.AddPhrase(new DialogPhrase(barman, "Да я понимаю, у самого босс тот еще мудак. Не дрейфь, мужик, прорвемся. Еще стаканчик?"));
        firstDialog.AddPhrase(new DialogPhrase(barman, "А что жизнь тебе не в кайф, так это поправимо. У меня тут есть... Специально для таких случаев."));
        firstDialog.AddPhrase(new DialogPhrase(barman, "Мужик! Ты че творишь? Мужииик!"));
        

       DialogManager.AddDialog(firstDialog);
    }
	
}


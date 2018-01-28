using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// Скрипт диалогового окна
// Содержит поле имени, поле фразы, задержку между буквами
public class DialogWindowScript : MonoBehaviour {

    public Text SpeakerName, SpeakerPhrase;
    int MessageCooldown; 
    int currentMessageNum;
    private bool DiaologPause = false;

    public Image black;
    public Animator anim;

    Dialog CurrentDialog;

    // Функция старта диалога
    public void StartDialog(Dialog.DialogType type)
    {
        currentMessageNum = 0;
        CurrentDialog = DialogManager.Dialogs.Find(x => x.Type == type);

        ShowMessage();
    }

    public void Pause()
    {
        DiaologPause = true;
    }

    public void Continue()
    {
        DiaologPause = false;
    }

    public bool DiologInPause()
    {
        return DiaologPause;
    }


    // Функция выводит сообщение
    void ShowMessage()
    {
        StopCoroutine("PrintMessage");

        DialogPhrase currentPhrase;

        if (CurrentDialog.Phrases.Count > currentMessageNum)
            currentPhrase = CurrentDialog.Phrases[currentMessageNum];
        else
        {
            return;
        }

        MessageCooldown = 3;
        SpeakerName.text = currentPhrase.Speaker.Name;

        SpeakerPhrase.text = "";

        StopAllCoroutines();
        StartCoroutine(PrintMessage(currentPhrase.Message));

        currentMessageNum++;
    }

    // Функция печатает сообщение по букввам
    IEnumerator PrintMessage(string message)
    {
        for(int i = 0; i < message.Length; i++)
        {
            SpeakerPhrase.text += message[i];

            if (i == message.Length - 1)
            {
                StopAllCoroutines();
                Pause();
                StartCoroutine(NextMessage());
            }
            yield return new WaitForSeconds(.0001f);
        }

    }

    // Функция выводит новое сообщение после кулдауна
    IEnumerator NextMessage()
    {

        while (DiologInPause())
        {
            yield return null;
        }

        anim.SetBool("Fade", true);
        while (MessageCooldown > 0)
        {
            MessageCooldown--;
            yield return new WaitForSeconds(0.5f);
        }
        anim.SetBool("Fade", false);

        ShowMessage();
    }

    void EndDialog()
    {

    }
}

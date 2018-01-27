using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class DialogWindowScript : MonoBehaviour {

    public Text SpeakerName, SpeakerPhrase;
    int MessageCooldown, currentMessageNum;

    Dialog CurrentDialog;

    public void StartDialog(Dialog.DialogType type)
    {
        currentMessageNum = 0;
        CurrentDialog = DialogManager.Dialogs.Find(x => x.Type == type);

        ShowMessage();
    }

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


    IEnumerator PrintMessage(string message)
    {
        for(int i = 0; i < message.Length; i++)
        {
            SpeakerPhrase.text += message[i];

            if (i == message.Length - 1)
            {
                StopAllCoroutines();
                StartCoroutine(NextMessage());
            }
            yield return new WaitForSeconds(.0001f);
            
           
        }

    }


    IEnumerator NextMessage()
    {
        while(MessageCooldown > 0)
        {
            MessageCooldown--;
            yield return new WaitForSeconds(1.5f);
        }

        ShowMessage();
    }

    void EndDialog()
    {

    }


}

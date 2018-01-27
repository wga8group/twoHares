using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class PlayDialogScript : MonoBehaviour {

    public Dialog.DialogType DialogType;
    public DialogWindowScript Dialog;


    void Update()
    {
        //if (Input.GetKeyDown(KeyCode.Return))
        if (Input.GetMouseButton(0))
        {
            Dialog.StartDialog(DialogType);
        }
    }
}

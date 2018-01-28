using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class PlayDialogScript : MonoBehaviour {

    public Dialog.DialogType DialogType;
    public DialogWindowScript Dialog;
    private bool IsStartDialog = true;

    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            switch (IsStartDialog)
            {
                case true:
                    Dialog.StartDialog(DialogType);
                    IsStartDialog = false;
                    break;
                default:
                    Dialog.Continue();
                    break;
            }
        }

    }

}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


[RequireComponent(typeof(Text))]
public class DialogueBarman : MonoBehaviour {

    private Text textComponent;

    public string[] DialogueStrings;
    public float SecBetChar = 0.15f;
    public float SecBetPhrase = 1.0f;

    // Use this for initialization
    void Start () {
        textComponent = GetComponent<Text>();
        textComponent.text = "";
    }
	
	// Update is called once per frame
	void Update () {
        //if (Input.GetKeyDown(KeyCode.Return))
        if (Input.GetMouseButton(0))
        {
            StopAllCoroutines();
            StartCoroutine(DisplayString(DialogueStrings[0]));

        }
    }

    private IEnumerator DisplayString(string stringToDisplay)
    {
        int stringLength = stringToDisplay.Length;
        int currentCharacterIndex = 0;

        textComponent.text = "";

        while (currentCharacterIndex < stringLength)
        {
            textComponent.text += stringToDisplay[currentCharacterIndex];
            currentCharacterIndex++;

            if (currentCharacterIndex < stringLength)
            {

               yield return new WaitForSeconds(SecBetChar);

            }
            else
            {
                yield return new WaitForSeconds(SecBetPhrase);
                break;
            }
        }

        textComponent.text = "";
    }

}

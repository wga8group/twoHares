using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ChoiceMenu : MonoBehaviour {

    //варианты (index - порядковый индекс сцены в build settings; на момент написания кода у SEM это 2)
    //SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + index);
    //SceneManager.LoadScene("SEM");
    //SceneManager.LoadScene(index);
    //SceneManager.LoadScene("Scenes/SEM/SEM");


    public void PlaySem()
    {
        SceneManager.LoadScene("Scenes/SEM/SEM");
    }

    public void PlayVov()
    {
        SceneManager.LoadScene("Scenes/VOV/VOV");
    }

    public void PlayAlex()
    {
        SceneManager.LoadScene("Scenes/ALEX/ALEX");
    }

    public void PlayAnt()
    {
        SceneManager.LoadScene("Scenes/ANT/ANT");
    }

    public void PlayKris()
    {
        SceneManager.LoadScene("Scenes/KRIS/KRIS");
    }

    public void PlayMain()
    {
        SceneManager.LoadScene("Scenes/MAIN/CutScene1");
    }

    public void PlayIlia () {
        SceneManager.LoadScene("Scenes/ILIA/ILIA");
    }

    // Update is called once per frame
    public void QuiteGame () {
        Debug.Log("QUIET!");
        Application.Quit();
	}
}

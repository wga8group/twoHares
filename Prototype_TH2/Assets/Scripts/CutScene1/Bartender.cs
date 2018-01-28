using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bartender : MonoBehaviour
{

    // Объявляем используемые компоненты
    private Animator animator;
    private int numAnim = 1;
    private int FadePauseCooldown = 3;
    private bool IsFirstClick = true;

    // Получаем ссылки на компоненты
    private void Awake()
    {
        animator = GetComponent<Animator>();
    }

    private CharState State
    {
        get { return (CharState)animator.GetInteger("State"); }
        set { animator.SetInteger("State", (int)value); }
    }

    private void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            Debug.Log("click!");
            if (IsFirstClick != true)
            {
                StartCoroutine(NextAnimation());
            }
            IsFirstClick = false;
        }
    }

    public void PlayNextAnimation()
    {
        FadePauseCooldown = 3;
        switch (numAnim)
        {
            case 0:
                State = CharState.BartenderClean;
                break;
            case 1:
                State = CharState.BartenderGlass;
                break;
            case 2:
                State = CharState.BartenderBottle;
                break;
            default:
                State = CharState.BartenderClean;
                break;
        }
        numAnim++;
        Debug.Log(numAnim);
    }

    IEnumerator NextAnimation()
    {
        while (FadePauseCooldown > 0)
        {
            FadePauseCooldown--;
            yield return new WaitForSeconds(0.5f);
        }
        PlayNextAnimation();
    }
}

public enum CharState
{
    BartenderClean,
    BartenderGlass,
    BartenderBottle,
}

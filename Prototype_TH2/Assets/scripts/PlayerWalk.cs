using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerWalk : MonoBehaviour {

    [SerializeField]
    private float speed = 5.0F;

    private Animator animator;
    private SpriteRenderer sprite;
    private Vector3 mousePosition;
    private bool move;
    private Vector3 topRightCorner;
    private Vector3 lowerLeftCorner;

    private PlayerState State
    {
        get { return (PlayerState)animator.GetInteger("State"); }
        set { animator.SetInteger("State", (int) value); }
    }


    private void Awake()
    {
        animator = GetComponent<Animator>();
        sprite = GetComponentInChildren<SpriteRenderer>();
        mousePosition = transform.position;
        move = false;
        topRightCorner = Camera.main.ScreenToWorldPoint(new Vector3(Camera.main.pixelWidth, Camera.main.pixelHeight, Camera.main.nearClipPlane));
        lowerLeftCorner = Camera.main.ScreenToWorldPoint(new Vector3(0, 0, Camera.main.nearClipPlane));
    }

    private void Update()
    {
        
        State = PlayerState.Idle;

        if (Input.GetButton("Horizontal")){
            Walk();
        }

        if (move == true){
            State = PlayerState.Walk;
            MouseWalk();
        }

        if (Input.GetMouseButtonDown(0)){
            State = PlayerState.Walk;
            SetMousePosition();
            move = true;
        }

        /*Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;
        if (Physics.Raycast(ray, out hit, 500000)){

        }*/

    }

    private void Walk()
    {
        State = PlayerState.Walk;

        Vector3 direction = transform.right * Input.GetAxis("Horizontal");

        transform.position = Vector3.MoveTowards(transform.position, transform.position + direction, speed * Time.deltaTime);
        sprite.flipX = direction.x < 0.0F;
    }


    private void SetMousePosition()
    {
        mousePosition = Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, Camera.main.nearClipPlane));
    }


    private void MouseWalk()
    {
        //левая граница окна игры
        if (mousePosition.x <= (lowerLeftCorner.x + 0.150F))
        {
            mousePosition.x = lowerLeftCorner.x + 0.150F;
        }
        //правая граница окна игры
        if (mousePosition.x >= topRightCorner.x - 0.150F)
        {
            mousePosition.x = topRightCorner.x - 0.150F;
        }

        //диапазон точки назначния (близость к ней)
        if (transform.position.x >= mousePosition.x - 0.02F && transform.position.x <= mousePosition.x + 0.02F){
            move = false;
            return;
        }

        //направление движения
        Vector3 direction = new Vector3(1, 0, 0);
        sprite.flipX = false; //инвертация спарйта
        if (mousePosition.x < transform.position.x)
        {
            direction.x = direction.x * (-1);
            sprite.flipX = true;
        }

        //само смещение (движение)
        transform.position = Vector3.MoveTowards(transform.position, transform.position + direction, speed * Time.deltaTime);

        //sprite.flipX = direction.x < 0.0F; //можно одной строчкой
        //Vector2 mousePos = new Vector2(); //на будущее
        // mousePos.x = Input.mousePosition.x;
        // Note that the y position from Event is inverted.
        //mousePos.y = c.pixelHeight - Input.mousePosition.y;
        //Debug.Log("Screen pixels: " + Camera.main.pixelWidth + ":" + Camera.main.pixelHeight);
        //Debug.Log("Mouse position: " + mousePos);
        //Debug.Log("World mouse position: " + mousePosition.ToString("F3"));
        //Debug.Log("Worldd object (Transform) position: " + transform.position.ToString("F3"));
    }


}


public enum PlayerState
{
    Idle,
    Walk
}
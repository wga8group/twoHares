using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerWalk : MonoBehaviour {

    [SerializeField]
    private float speed = 1.0F;

    public float moveTime = 0.1F;

    private Animator animator;
    private SpriteRenderer sprite;
    private Vector3 mousePosition;
    private bool move;

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
    }

    private void Update()
    {
        
        State = PlayerState.Idle;

        if (Input.GetButton("Horizontal")) {
            Walk();
        }


        /*Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;
        if (Physics.Raycast(ray, out hit, 500000))
        {

        }*/
        if (move == true)
        {
            MouseWalk();
        }

        
        if (Input.GetMouseButtonDown(0))
        {
            SetMousePosition();
            move = true;
        }
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
        State = PlayerState.Walk;
        //Vector2 mousePos = new Vector2();
        // Get the mouse position from Event.
        // Note that the y position from Event is inverted.
        // mousePos.x = Input.mousePosition.x;
        //mousePos.y = c.pixelHeight - Input.mousePosition.y;
        //Debug.Log("Screen pixels: " + c.pixelWidth + ":" + c.pixelHeight);
        //Debug.Log("Mouse position: " + mousePos);
        //Debug.Log("World position: " + mousePosition.ToString("F3"));
        //Debug.Log("Transform position: " + transform.position.ToString("F3"));

        Vector3 direction = new Vector3(1, 0, 0);
        if (mousePosition.x < transform.position.x)
        {
            direction.x = direction.x*(-1);
        }


        transform.position = Vector3.MoveTowards(transform.position, transform.position + direction, speed * Time.deltaTime);

        if (transform.position.x >= mousePosition.x - 0.02F && transform.position.x <= mousePosition.x + 0.02F) 
        {
            move = false;
        }
      

    }


}


public enum PlayerState
{
    Idle,
    Walk,
}
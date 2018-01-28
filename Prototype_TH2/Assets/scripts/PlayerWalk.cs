using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerWalk : MonoBehaviour {

    [SerializeField]
    private float speed = 10.0F;

    private Animator animator;
    private SpriteRenderer sprite;

    private PlayerState State
    {
        get { return (PlayerState)animator.GetInteger("State"); }
        set { animator.SetInteger("State", (int) value); }
    }


    private void Awake()
    {
        animator = GetComponent<Animator>();
        sprite = GetComponentInChildren<SpriteRenderer>();
    }

    private void Update()
    {
        State = PlayerState.Idle;

        if (Input.GetButton("Horizontal")) {
            Walk();
        }    
    }

    private void Walk()
    {
        State = PlayerState.Walk;

        Vector3 direction = transform.right * Input.GetAxis("Horizontal");

        transform.position = Vector3.MoveTowards(transform.position, transform.position + direction, speed * Time.deltaTime);
        sprite.flipX = direction.x < 0.0F;
    }
}


public enum PlayerState
{
    Idle,
    Walk,
}
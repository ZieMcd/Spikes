using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerControl : MonoBehaviour
{

    //private Vars
    private float fSpeed = 20.0f;
    private float fTurnSpeed = 100f;
    private float fHozInput;
    private float fForwardInput;


    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()

    {
        //user imput
        fHozInput = Input.GetAxis("Horizontal");
        fForwardInput = Input.GetAxis("Vertical");

        //We move the car forward
        transform.Translate(Vector3.forward * Time.deltaTime * fSpeed * fForwardInput);
        transform.Rotate(Vector3.up,Time.deltaTime * fTurnSpeed * fHozInput);
    }
}

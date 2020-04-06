using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerControl : MonoBehaviour
{
    private float horizontalInput;
    private float speed = 15.0f;
    private float range = 15f;
    public GameObject sandwichProjectile;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (transform.position.x < -range)
        {
            transform.position = new Vector3(-range, transform.position.y ,transform.position.z);
        }

        if (transform.position.x > range)
        {
            transform.position = new Vector3(range, transform.position.y, transform.position.z);
        }

        horizontalInput = Input.GetAxis("Horizontal");
        transform.Translate(Vector3.right * Time.deltaTime * horizontalInput * speed);

        if (Input.GetKeyDown(KeyCode.Space))
        {
            //launch projectile from here
            Instantiate(sandwichProjectile, transform.position+ new Vector3(0,0.75f,0), sandwichProjectile.transform.rotation);
        }

    }
}

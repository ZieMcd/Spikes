using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyOutOfBounds : MonoBehaviour
{
    // Start is called before the first frame update
    private float maxZ = 30.0f;
    private float lowZ = -10.0f;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (transform.position.z > maxZ)
        {
            Destroy(gameObject);
        } else if (transform.position.z < lowZ)
        {
            Destroy(gameObject);
        }

      
    }
}

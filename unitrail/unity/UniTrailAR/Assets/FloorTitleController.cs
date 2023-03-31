using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
public class FloorTitleController : MonoBehaviour
{
    private Camera mainCamera;
    // Start is called before the first frame update
    void Start()
    {
        mainCamera = Camera.main;
    }

    // Update is called once per frame
    void Update()
    {
        // Camera mainCamera = Camera.main;    
        if(mainCamera.transform.position.y == 6.7f){
            GetComponent<TextMeshProUGUI>().text ="Floor 1";
        }
        else if(mainCamera.transform.position.y == 18.7f){
            GetComponent<TextMeshProUGUI>().text ="Floor 2";
        }
        else if(mainCamera.transform.position.y == 30.7f){
            GetComponent<TextMeshProUGUI>().text ="Floor 3";
        }
        else if(mainCamera.transform.position.y == 43){
            GetComponent<TextMeshProUGUI>().text ="Floor 4";
        }
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FloorController : MonoBehaviour
{
    public void SwitchFloor(Button button){
        Camera mainCamera = Camera.main;
        if (button.gameObject.name == "FloorOneButton"){
            Debug.Log("Floor One has been pressed");
            mainCamera.transform.position = new Vector3(-3.0f,6.7f,-4.1f);
        }
        else if (button.gameObject.name == "FloorTwoButton"){
            mainCamera.transform.position = new Vector3(-3.0f,18.7f,-4.1f);
        }
        else if (button.gameObject.name == "FloorThreeButton"){
            mainCamera.transform.position = new Vector3(-3.0f,30.7f,-3.8f);
        }
        else if (button.gameObject.name == "FloorFourButton"){
            Debug.Log("Floor Four has been pressed");
            mainCamera.transform.position = new Vector3(-3.5f,43,-4.4f);
        }
    }

    private GameObject btn;
    void Start(){
        Vector2 screenPosition = new Vector2(Screen.width - 75, Screen.height - 150);
        btn = GameObject.Find("FloorOneButton");
        btn.transform.position = screenPosition;
        btn = GameObject.Find("FloorTwoButton");
        btn.transform.position = new Vector2(Screen.width - 75, screenPosition.y - 100) ;
        btn = GameObject.Find("FloorThreeButton");
        btn.transform.position = new Vector2(Screen.width - 75, screenPosition.y - 200) ;
        btn = GameObject.Find("FloorFourButton");
        btn.transform.position = new Vector2(Screen.width - 75, screenPosition.y - 300) ;
    }
}



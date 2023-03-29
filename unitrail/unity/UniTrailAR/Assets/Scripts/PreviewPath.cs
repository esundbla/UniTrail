using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.SceneManagement;

public class PreviewPath : MonoBehaviour
{
    private NavMeshPath path;
    private LineRenderer line;
    private GameObject startTarget;
    private GameObject endTarget;
    private Vector3 lineHeightStart;
    private Vector3 lineHeightDestination;
    void Start()
    {
        path = new NavMeshPath();
        line = transform.GetComponent<LineRenderer>();
        // SetNagivationTarget("AES_285","AES_237");
        // string[] test = {"AES_285","AES_237"};
        // SetNagivationTarget(test);
        startTarget = GameObject.Find("AES_210");
        endTarget = GameObject.Find("AES_285");
        

        // save varibles for nagivate scene
        // PlayerPrefs.SetString("start", startTarget.name);
        // PlayerPrefs.SetString("end", endTarget.name);
        // int previewSceneIndex = SceneManager.GetActiveScene().buildIndex;
        // PlayerPrefs.SetInt("previousSceneIndex", previewSceneIndex);
        
    }

    void Update()
    {
        NavMesh.CalculatePath(startTarget.transform.position, endTarget.transform.position, NavMesh.AllAreas, path);
        
        line.positionCount = path.corners.Length;
        line.SetPositions(path.corners);
    }
    public void SetNavigationTarget(string start){
        // Find object name
        Debug.Log("Start");
        Debug.Log(start);
        startTarget = GameObject.Find(start);
        // endTarget = GameObject.Find("AES_285");
        Debug.Log("End");
    }
    


}

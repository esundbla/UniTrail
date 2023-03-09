using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.SceneManagement;
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
        SetNagivationTarget("AES_285","AES_310");

        NavMesh.CalculatePath(startTarget.transform.position, endTarget.transform.position, NavMesh.AllAreas, path);
        // RenderPath(path.corners);
        // save varibles for nagivate scene
        PlayerPrefs.SetString("start", startTarget.name);
        PlayerPrefs.SetString("end", endTarget.name);
        int previewSceneIndex = SceneManager.GetActiveScene().buildIndex;
        PlayerPrefs.SetInt("previousSceneIndex", previewSceneIndex);
        
    }

    void Update()
    {
       
        
        line.positionCount = path.corners.Length;
        line.SetPositions(path.corners);
    }
    public void SetNagivationTarget(string start, string end){
        // Find object name
        startTarget = GameObject.Find(start);
        endTarget = GameObject.Find(end);
    }
    private void RenderPath(Vector3[] corners){
        for (int i = 0; i< corners.Length -1; i ++){
            LineRenderer pathrender = Instantiate(line,transform);
            pathrender.positionCount = 2;
            pathrender.SetPosition(0,corners[i]);
            pathrender.SetPosition(1,corners[i+1]);
            Debug.Log(i);
        }
    }


}

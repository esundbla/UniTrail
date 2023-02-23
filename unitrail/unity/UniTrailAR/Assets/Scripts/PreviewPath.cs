using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class PreviewPath : MonoBehaviour
{
    private NavMeshPath path;
    private LineRenderer line;
    public GameObject start;
    public GameObject navTargetObject;

    void Start()
    {
        path = new NavMeshPath();
        line = transform.GetComponent<LineRenderer>();
    }

    void Update()
    {
        
        NavMesh.CalculatePath(start.transform.position, navTargetObject.transform.position, NavMesh.AllAreas, path);
        line.positionCount = path.corners.Length;
        line.SetPositions(path.corners);
        line.enabled = true;
    }
}

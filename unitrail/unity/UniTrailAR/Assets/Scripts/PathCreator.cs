using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class PathCreator : MonoBehaviour
{ 
    public Transform startObject;
    public Transform endObject;
    public Material lineMaterial;
    public float elevationThreshold = 0.5f;

    private void Start()
    {
        // Calculate the path between the start and end points on the NavMesh
        NavMeshPath navMeshPath = new NavMeshPath();
        NavMesh.CalculatePath(startObject.position, endObject.position, NavMesh.AllAreas, navMeshPath);

        // Loop through the path and create a new GameObject and Line Renderer for each segment
        for (int i = 0; i < navMeshPath.corners.Length - 1; i++)
        {
            // Check if the change in elevation between the current and next points is greater than the threshold
            if (Mathf.Abs(navMeshPath.corners[i].y - navMeshPath.corners[i+1].y) > elevationThreshold)
            {
                continue; // Skip creating a Line Renderer for this segment
            }

            // Create a new empty GameObject to hold the Line Renderer
            GameObject pathObject = new GameObject("Path " + i);

            // Add a new Line Renderer component to the GameObject
            LineRenderer lineRenderer = pathObject.AddComponent<LineRenderer>();
            lineRenderer.material = lineMaterial;
            lineRenderer.startWidth = 0.1f;
            lineRenderer.endWidth = 0.1f;

            // Set the start and end positions of the Line Renderer to the current and next points in the path
            lineRenderer.positionCount = 2;
            lineRenderer.SetPosition(0, navMeshPath.corners[i]);
            lineRenderer.SetPosition(1, navMeshPath.corners[i + 1]);
        }
        // Loop through the path and update the position of each Line Renderer
        for (int i = 0; i < navMeshPath.corners.Length - 1; i++)
        {
            // Find the GameObject holding the Line Renderer for this segment of the path
        GameObject pathObject = GameObject.Find("Path " + i);
        if (pathObject == null)
        {
            continue; // Skip updating the Line Renderer for this segment
        }

        // Get the Line Renderer component for this segment of the path
        LineRenderer lineRenderer = pathObject.GetComponent<LineRenderer>();


            // Check if the change in elevation between the current and next points is greater than the threshold
            if (Mathf.Abs(navMeshPath.corners[i].y - navMeshPath.corners[i+1].y) > elevationThreshold)
            {
                lineRenderer.enabled = false; // Hide the Line Renderer for this segment
                continue;
            }
            else
            {
                lineRenderer.enabled = true; // Show the Line Renderer for this segment
            }

            // Set the start and end positions of the Line Renderer to the current and next points in the path
            lineRenderer.SetPosition(0, navMeshPath.corners[i]);
            lineRenderer.SetPosition(1, navMeshPath.corners[i + 1]);
        }


    }

    private void Update()
    {
        
    }
}

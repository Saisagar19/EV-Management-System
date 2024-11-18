package com.algorithm;
import java.util.*;
public class MethodMain {

	public static void main(String[] args) {
		int V = 5;
        int source = 0;
 
       
        List<List<Node> > adj
            = new ArrayList<List<Node> >();
 
        
        for (int i = 0; i < V; i++) {
            List<Node> item = new ArrayList<Node>();
            adj.add(item);
        }
 
       
        adj.get(0).add(new Node(1, 9));
        adj.get(0).add(new Node(2, 6));
        adj.get(0).add(new Node(3, 5));
        adj.get(0).add(new Node(4, 3));
 
        adj.get(2).add(new Node(1, 2));
        adj.get(2).add(new Node(3, 4));
 
        
        ShortestPath dpq = new ShortestPath(V);
        dpq.dijkstra(adj, source);
 
       
        System.out.println("The shorted path from source Location :");
 
        for (int i = 0; i < dpq.dist.length; i++)
            System.out.println(source + " to " + i + " is "
                               + dpq.dist[i]);
    }

	}



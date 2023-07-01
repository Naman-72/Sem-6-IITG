public class node {
    int value;
    int weight;
    node next;
    node (int v) {
        value = v;
        weight = 1;
        next = null;
    }
    node(int v, int w) {
        value = v;
        weight = w;
        next = null;
    }
    node(int v, int w, node n) {
        value = v;
        weight = w;
        next = n;
    }
}

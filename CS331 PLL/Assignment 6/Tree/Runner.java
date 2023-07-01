public class Runner {
    public static void main(String[] args) {
        BinaryTree B = new BinaryTree();
        B.add(5);
        B.add(0);
        B.add(15);
        B.add(6);
        B.add(2);
        B.add(-5);
        B.add(25);
        B.levelOrder();
        System.out.println();
        B.printPreOrder();
        System.out.println();
        B.printInOrder();
        System.out.println();
        B.printPostOrder();
        System.out.println();
        System.out.println();

        // System.out.println(B.find(115));
        return;
    }
}

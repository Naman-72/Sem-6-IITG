import java.util.Arrays;

public class arrayprintNewMethods {
    public static void main(String[] args)
    {
        String[] array1 = {"Learn","With","Jaspal"};
        int[] array2 = {25,105,21,24};
        System.out.print("array1 : toString Method :");
        System.out.println(Arrays.toString(array1));
        System.out.print("array2 : toString Method :");
        System.out.println(Arrays.toString(array2));

        Arrays.sort(array1);
        System.out.print("array1 : asList Method :");
        System.out.println(Arrays.asList(array1));

        // asList method not good for int
        int[][] M= {{1,23,52,12},{223,4,23,112}};
        System.out.println(Arrays.deepToString(M));
    }
}

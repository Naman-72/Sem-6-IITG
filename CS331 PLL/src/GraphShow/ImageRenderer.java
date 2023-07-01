package GraphShow;

public class ImageRenderer {
    public  void renderDotFile(String dotFilePath, String pngFilePath) {
        try {
          String[] cmdPng = {"dot", "-Tpng", "-o", pngFilePath, dotFilePath};
          Process process = Runtime.getRuntime().exec(cmdPng);
          int exitValue = process.waitFor();
          // Check the exit value to see if the command succeeded
          if (exitValue != 0) {
            throw new RuntimeException("Graphviz command failed with exit code " + exitValue);
          }
        } catch (Exception e) {
          throw new RuntimeException("Error rendering PNG file: " + e.getMessage(), e);
        }
      }
}

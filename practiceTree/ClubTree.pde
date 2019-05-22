import static java.lang.System.*;
import java.util.LinkedList;
import java.util.Queue;
public class ClubTree {
  TreeNode root;
  TreeNode current;
  
  public ClubTree(){
    root=null;
  }
  TreeNode buildTree(){
    //lvl 1
    root=new TreeNode("Would you like to see which club you best fit in?");
    //lvl 2
    root.setLeft(new TreeNode("First question"));
    root.setRight(new TreeNode(null));
    //lvl 3
    root.getLeft().setLeft(new TreeNode("L3 Left Left"));
    root.getLeft().setRight(new TreeNode("L3 Left Right"));
    root.getRight().setLeft(new TreeNode("L3 Left Right"));
    root.getRight().setRight(new TreeNode("L3 Left Right"));
    //lvl 4
    root.getLeft().getLeft().setLeft(new TreeNode("L4 Left Left Left"));
    root.getLeft().getLeft().setRight(new TreeNode("L4 Left Left Right"));
    root.getLeft().getRight().setLeft(new TreeNode("L4 Left Right Left"));
    root.getLeft().getRight().setRight(new TreeNode("L4 Left Right Right"));
    
    root.getRight().getLeft().setLeft(new TreeNode("L4 Right Left Left"));
    root.getRight().getLeft().setRight(new TreeNode("L4 Right Left Right"));
    root.getRight().getRight().setLeft(new TreeNode("L4 Right Right Left"));
    root.getRight().getRight().setRight(new TreeNode("L4 Right Right Right"));
    
    //lvl 5
    root.getLeft().getLeft().getLeft().setLeft(new TreeNode("L5 Left Left Left Left"));
    root.getLeft().getLeft().getLeft().setLeft(new TreeNode("L5 Left Left Left Left"));
    root.getLeft().getLeft().getLeft().setRight(new TreeNode("L5 Left Left Left Right"));
    root.getLeft().getLeft().getRight().setLeft(new TreeNode("L5 Left Left Right Left"));
    root.getLeft().getLeft().getRight().setRight(new TreeNode("L5 Left Left Right Right"));
    root.getLeft().getRight().getLeft().setLeft(new TreeNode("L5 Left Right Left Left"));
    root.getLeft().getRight().getLeft().setRight(new TreeNode("L5 Left Right Left Right"));
    root.getLeft().getRight().getRight().setLeft(new TreeNode("L5 Left Right Right Left"));
    root.getLeft().getRight().getRight().setRight(new TreeNode("L5 Left Right Right Right"));
    
    root.getRight().getLeft().getLeft().setLeft(new TreeNode("L5 Right Left Left Left"));
    root.getRight().getLeft().getLeft().setLeft(new TreeNode("L5 Right Left Left Left"));
    root.getRight().getLeft().getLeft().setRight(new TreeNode("L5 Right Left Left Right"));
    root.getRight().getLeft().getRight().setLeft(new TreeNode("L5 Right Left Right Left"));
    root.getRight().getLeft().getRight().setRight(new TreeNode("L5 Right Left Right Right"));
    root.getRight().getRight().getLeft().setLeft(new TreeNode("L5 Right Right Left Left"));
    root.getRight().getRight().getLeft().setRight(new TreeNode("L5 Right Right Left Right"));
    root.getRight().getRight().getRight().setLeft(new TreeNode("L5 Right Right Right Left"));
    root.getRight().getRight().getRight().setRight(new TreeNode("L5 Right Right Right Right"));
    
    return root;
  }
  
}

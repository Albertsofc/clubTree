void setup() {
  ClubTree tree = new ClubTree();

  tree.add("Are you artsy?");
  tree.setRight("Do you like to draw?");
  tree.setRight("Do you like music?");
  tree.add(100);
  tree.add(80);
  tree.add(70);
  tree.add(85);
  tree.add(98);
  tree.add(120);

  
}

public interface Treeable{
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}

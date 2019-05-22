String goGetIt;
void setup() {
  goGetIt="tree.buildTree()";
  ClubTree tree = new ClubTree();
  
  println(goGetIt);
  goGetIt+=".getLeft()";
  println((goGetIt+".getValue()"));
  //if()//bounds)
}

public interface Treeable{
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}

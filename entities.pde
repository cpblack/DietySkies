class entities {
  StringDict possibleEntityLookup = new StringDict();
  possibleEntityLookup.set("megaman","0")
  animation[] possibleEntitiesAnimations = new animation[]{characterAnimation};
  animation[] entities = new animation[1];
  string[] entityTypes = new String[1];
  void summon(String typeIn, float xIn, float yIn, float xSizeIn, float ySizeIn) {
    animation pullAnimation = possibleEntityAnimations[int(possibleEntityLookup.get(typeIn))];
    pullAnimation.x = xIn;
    pullAnimation.y = yIn;
    pullAnimation.xSize = xSizeIn;
    pullAnimation.ySize = ySizeIn;
    append(entities,pullAnimation);
    entityTypes.append(typeIn);
  }
  void doDraw(){
    t = 0
    while (t < entities.length) {
      entities[t].doDraw();
      t = t + 1;
    }
  }
}

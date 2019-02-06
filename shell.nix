with import <nixpkgs> {};

((python37.withPackages (ps: with ps; [
  pandas
  matplotlib
  gensim
  spacy
  ftfy
  spacy_models.en_core_web_lg
  jupyter
  scikitlearn
  six
  word2vec
])).override({ignoreCollisions=true;})).env

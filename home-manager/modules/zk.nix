{
  programs.zk = {
    enable = true;
    settings = {

      notebook = {
        dir = "~/syncthing/notes";
      };

      alias = {
        list = "zk list --interactive $@";
        edit = "zk edit --interactive $@";
        rm = "zk list --interactive --quiet --format '{{abs-path}}' --delimiter0 $@ | xargs -0 rm -vf --";
      };

      tool = {
        fzf-preview = "bat -p --color always {-1}";
      };
      
    };
  };
}

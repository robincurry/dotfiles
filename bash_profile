if [ -f ~/.bashrc ];
then
  source ~/.bashrc
fi

if [ -f ~/.localrc ]; then
  . ~/.localrc
fi
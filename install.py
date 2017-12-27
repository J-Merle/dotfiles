from shutil import copyfile

from os.path import expanduser


def ask_yes_no(question):
    """ Ask a question to the user
        return true if the user answer yes
        false otherwise
    """
    answer = ""
    while answer != "y" and answer != "n":
        answer = input(question + " [Y/N] ")
    return answer == "y"


def copy_to_home(list_files):
    for _file in list_files:
        dest = expanduser('~') + '/' + _file
        copyfile(_file, dest)


if __name__ == '__main__':
    if(ask_yes_no("Install bashrc configuration ?")):
        print(".bashrc and .bash_aliases will be added ...")
        copy_to_home(['.bashrc', '.bash_aliases'])
        print("[Done]")
    if(ask_yes_no("Install vimrc configuration ?")):
        print(".vimrc will be added...")
        copy_to_home(['.vimrc'])
        print("[Done]")
    print("Installation finished")

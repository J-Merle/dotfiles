from __future__ import (absolute_import, division, print_function)
import pathlib
import os
from ranger.api.commands import Command


class Extract(Command):
    """:extract <filename>

        Command to extract quickly any compressed file no matter the extension
    """
    extension_command = {'.tar.bz2': 'tar xjf',
                         '.tar.gz': 'tar xzf',
                         '.bz2':'bunzip2',
                         '.rar':'unrar',
                         '.gz':'gunzip',
                         '.tar':'xf',
                         '.tbz2':'tar xjf',
                         '.tgz':'tar xzf',
                         '.zip':'unzip',
                         '.Z':'uncompress',
                         '.7z':'7z x'}

    def execute(self):
        target_filename = self.rest(1) or self.fm.thisfile.path

        if not os.path.exists(target_filename):
            self.fm.notify("The given file does not exist!", bad=True)
            return

        extension = ''.join(pathlib.Path(target_filename).suffixes)

        if extension not in self.extension_command:
            self.fm.notify("This type of file can not be extracted", bad=True)
            return

        self.fm.notify("Extracting " + target_filename + "...")
        os.system(self.extension_command[extension] + ' ' + target_filename)


    # The tab method is called when you press tab, and should return a list of
    # suggestions that the user will tab through.
    # tabnum is 1 for <TAB> and -1 for <S-TAB> by default
    def tab(self, tabnum):
        # This is a generic tab-completion function that iterates through the
        # content of the current directory.
        return self._tab_directory_content()

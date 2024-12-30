# flake8: noqa

import builtins
import contextlib
import sys
import test.support
from test.support import requires_zlib

ModuleNotFoundError = getattr(builtins, "ModuleNotFoundError", ImportError)

try:
    from test.support.warnings_helper import check_warnings
except (ModuleNotFoundError, ImportError):
    from test.support import check_warnings


try:
    from test.support.os_helper import (
        EnvironmentVarGuard,
        rmtree,
        skip_unless_symlink,
        temp_dir,
        unlink,
    )
except (ModuleNotFoundError, ImportError):
    from test.support import (
        EnvironmentVarGuard,
        rmtree,
        skip_unless_symlink,
        temp_dir,
        unlink,
    )


try:
    from test.support.import_helper import CleanImport, DirsOnSysPath
except (ModuleNotFoundError, ImportError):
    from test.support import CleanImport, DirsOnSysPath


if sys.version_info < (3, 9):
    requires_zlib = lambda: test.support.requires_zlib

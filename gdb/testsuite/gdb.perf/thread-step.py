# Copyright (C) 2013 Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# This test case is to test the speed of GDB when it is handling the
# shared libraries of inferior are loaded and unloaded.

from perftest import perftest
from perftest import measure

class SteppingInMultiThreadedApp(perftest.TestCaseWithBasicMeasurements):
    def __init__(self, step_count):
        # We want to measure time in this test.
        super (SteppingInMultiThreadedApp, self).__init__ ("thread-Step")
        self.step_count = step_count

    def warm_up(self):
        do_test_command = "step"
        gdb.execute ("step", False, True)
        
    def _run(self, r):
        for i in range(0, r):
            gdb.execute("step", False, True)

    def execute_test(self):
        func = lambda: self._run(self.step_count)
        self.measure.measure(func, self.step_count)


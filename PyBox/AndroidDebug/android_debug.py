import subprocess

class Adb():

    def cmd(self, c, expect='', return_out=False):
        print(c)
        self.out = subprocess.Popen(c, shell=True,\
                stdout=subprocess.PIPE).stdout.read().splitlines()
        print(self.out)
        self.out = filter(None, self.out)
        if return_out:
            return self.out
        else:
            if expect:
                for line in self.out:
                    if expect in line.decode():
                        print('expected ' + expect + ' received ' + line.decode())
                        return True
                print('expected ' + expect + ' not received')
                print(self.out)
                return False
            else:
                return True

adb_instance = Adb()
adb_instance.cmd('adb devices')

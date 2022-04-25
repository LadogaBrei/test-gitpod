from robot.api.deco import keyword
class KeywordsFromPython:
    @keyword
    def do_something_in_python(self, a, b, c):
        print(f"hello from python {a} {b} {c}")

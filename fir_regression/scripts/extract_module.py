#!/bin/env python3

import argparse
import os
import re
import typing

def match_module(line):
    m = re.fullmatch(r'^\s*module\s+(\S+)\s*:\s+', line)
    if m:
        return m.group(1)
    return None

def match_instance(line):
    m = re.match(r'^\s*inst\s+(\S+)\s+of\s+(\S+)\s+', line)
    if m:
        return m.group(2)
    return None

def match_reset(line):
    m = re.match(r'^(\s*input\s+reset\s+:\s*)\S+(\s+.*)$', line)
    if m:
        return m.group(1) + 'UInt<1>' + m.group(2)
    return None

class Module:

    name : str
    code : str
    deps : set

    def __init__(self, name):
        self.name = name
        self.code = ""
        self.deps = set()

    def set_code(self, code):
        self.code = code

    def add_dependency(self, name):
        self.deps.add(name)

class ModuleParser:

    modules : {str:Module}

    def __init__(self):
        self.modules = {}

    def parse_file(self, filename):
        current_module = None
        module_code = ""
        with open(filename, 'r') as f:
            for line in f:
                name = match_module(line)
                if name:
                    if current_module:
                        current_module.set_code(module_code)
                    self.modules[name] = Module(name)
                    current_module = self.modules[name]
                    module_code = line
                    continue
                name = match_instance(line)
                if name:
                    if current_module:
                        current_module.add_dependency(name)
                reset_line = match_reset(line)
                if reset_line:
                    line = reset_line
                module_code += line
        current_module.set_code(module_code)

    def find_deps(self, name):
        deps = []
        if name not in self.modules:
            print('"{}" NOT FOUND'.format(name))
            return []
        for dep_name in self.modules[name].deps:
            deps += self.find_deps(dep_name)
        deps += [name]
        return list(dict.fromkeys(deps)) # Ordered Set

    def write_all_deps(self, name, directory):
        deps = self.find_deps(name)
        for dep_name in deps:
            self.write_deps(dep_name, directory + '/' + dep_name + '.fir')

    def write_deps(self, name, filename):
        deps = self.find_deps(name)
        with open(filename, 'w') as f:
            f.write('circuit {} :\n'.format(name))
            for dep_name in deps:
                f.write(self.modules[dep_name].code)

    def print_deps(self, name):
        deps = self.find_deps(name)
        for dep_name in deps:
            print('- {}'.format(dep_name))
            for sub_dep in self.modules[dep_name].deps:
                print('  - {}'.format(sub_dep))

if __name__ == "__main__":
        
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--input', required=True, help='Input File')
    parser.add_argument('-o', '--output', required=False, help='Output File (default: <TOP>.fir')
    parser.add_argument('-t', '--top', help='Module to Extract')
    parser.add_argument('-qo', '--query-only', action='store_true', help='Only print dependencies')
    parser.add_argument('-da', '--dump-all', action='store_true', help='Dump all dependent modules to separate files')
    parser.add_argument('-odir', '--output-dir', default='./extracted', help='Output directory for "--dump-all" option (default: extracted/)')

    args = parser.parse_args()
    if not args.output:
        args.output = args.top + '.fir'

    module_parser = ModuleParser()
    module_parser.parse_file(args.input)
    if args.query_only:
        module_parser.print_deps(args.top)
    elif args.dump_all:
        os.makedirs(args.output_dir, exist_ok=True)
        module_parser.write_all_deps(args.top, args.output_dir)
    else:
        module_parser.write_deps(args.top, args.output)

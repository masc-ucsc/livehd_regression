#!/usr/bin/python
from treelib import Node, Tree
import sys
import re
import math
import random

def main():
    avg_children = 4
    total_cells = 5000
    avg_module_size = 300
    # sd = 1658
    sd = 100
    module_num = total_cells/avg_module_size
    depth = math.ceil(math.log(module_num, avg_children))

    # virtual tree construction and distribute the cells to modules 
    tree = Tree()
    top_name = ""

    left_cells = total_cells
    module_get_assigned = 0
    total_assigned_cells = 0

    for d in range(depth) :
        if (d == 0):
            # get cell numbers
            assigned_cells = 0
            while True :
                assigned_cells = int(random.gauss(avg_module_size, sd))
                if assigned_cells > 0 :
                    break

            module_get_assigned += 1
            total_assigned_cells += assigned_cells
            left_cells -= assigned_cells

            # create_top
            top_name = "Snxn" + str(int(total_cells/1000)) + "k"
            tree.create_node(str(assigned_cells) + " " + top_name, top_name) # encode cell number at the node name

        elif (d == 1) :
            for i in range(avg_children) :
                if left_cells < 0 :
                    break

                assigned_cells = 0
                while True :
                    assigned_cells = int(random.gauss(avg_module_size, sd))
                    if assigned_cells > 0 :
                        break

                module_get_assigned += 1
                total_assigned_cells += assigned_cells
                left_cells -= assigned_cells
                print("module:%d: %d cells" %(module_get_assigned, assigned_cells))
                print("total_assigned_cells %d" %(total_assigned_cells))

                sub_name = "SnxnLv" + str(d) + "Inst" + str(i)
                tree.create_node(str(assigned_cells) + " " + sub_name, sub_name, parent = top_name)
        else :        
            done_num = 0
            for i in range(avg_children ** (d)): # 0 ~ 15
                if left_cells < 0 :
                    break

                for j in range(avg_children ** (d-1)):      # 0 ~ 3
                    if (math.floor(i / avg_children) == j):
                        assigned_cells = 0
                        while True :
                            assigned_cells = int(random.gauss(avg_module_size, sd))
                            if assigned_cells > 0 :
                                break

                        module_get_assigned += 1
                        total_assigned_cells += assigned_cells
                        left_cells -= assigned_cells
                        print("module:%d: %d cells" %(module_get_assigned, assigned_cells))
                        print("total_assigned_cells %d" %(total_assigned_cells))

                        sub_name = "SnxnLv" + str(d) + "Inst" + str(i)
                        parent_name = "SnxnLv" + str(d-1) + "Inst" + str(j)
                        tree.create_node(str(assigned_cells) + " " + sub_name, sub_name, parent = parent_name)

    tree.show()


    print("module_num = ", module_num)
    print("depth = ", depth)
    print("total_assigned_cells = %d" %(total_assigned_cells))

    
    #todo: extend to Pyrope and Verilog synthetic

    #step-1: get some cells from the encode node tag, a tag example "327 SnxnLv2Inst5"
    #step-2: create module name based on the tree node tag
    #step-3: mimic previous script to construct the body
    #step-4: check the chidren module name, create children instantiations
    #step-5: create some interaction for the children output and the parent output

    f = open("%s.scala" %(tree[tree.root].tag.split()[1]), "w+")
    f.write("package %s\n" %(tree[tree.root].tag))
    f.write("import chisel3._\n")
    f.write("import scala.language.reflectiveCalls\n\n")


    for node in tree.expand_tree(mode=Tree.WIDTH):
        assigned_cells = 0
        module_name = ""
        for word in tree[node].tag.split():
            if word.isdigit():
                assigned_cells = math.ceil(int(word)/4)
            else:
                module_name = word



        f.write("\nclass %s extends Module {\n" %(module_name))
        f.write("  val io = IO(new Bundle {\n")
        f.write("    val a = Input(UInt(1.W))\n")
        f.write("    val b = Input(UInt(1.W))\n")
        f.write("    val z = Output(UInt(1.W))\n")
        f.write("  })\n")

        # construct the main body
        module2last_inv = {}
        for i in range(assigned_cells):
            if i == 0:
                f.write("  val t0    = io.a + io.b\n")
                f.write("  val inv0  = ~t0\n")
                f.write("  val x0    = t0 ^ inv0\n")
                f.write("  val invx0 = ~x0\n")
            else:
                f.write("  val t%d    = x%d + invx%d\n"   %(i, i-1, i-1))
                f.write("  val inv%d  = ~t%d\n"           %(i, i))
                f.write("  val x%d    = t%d ^ inv%d\n"    %(i, i,i))
                f.write("  val invx%d = ~x%d\n"           %(i, i))
                if (i == assigned_cells -1):
                    module2last_inv[module_name] = "invx%d" %(i)
                    # print("module %s last inv is : %s" %(module_name, module2last_inv[module_name]))
                    
        
        
        # create children instances
        for child in tree.children(node):
            print(child.tag)
            submodule_name = ""
            for word in child.tag.split():
                if word.isdigit() == False:
                    submodule_name = word
            f.write("\n  val inst_%s = Module(new %s())\n" %(submodule_name, submodule_name))
            f.write("  inst_%s.io.a := io.a\n" %(submodule_name))
            f.write("  inst_%s.io.b := io.b\n" %(submodule_name))

        
        # make children instances outputs interact with parent's output
        if (tree[node].is_leaf() == True):
            f.write("\n")
            f.write("  io.z := %s\n" %(module2last_inv[module_name]))
            f.write("}\n")
            continue     # continue next iterator of expand_tree


        i = 0
        for child in tree.children(node):
            submodule_name = ""
            for word in child.tag.split():
                if word.isdigit() == False:
                    submodule_name = word

            if i == 0:
                f.write("\n  val sum = inst_%s.io.z" %(submodule_name))
            else:
                f.write(" + inst_%s.io.z" %(submodule_name))
            i = i + 1
        
        f.write("\n")

        f.write("  io.z := sum ^ io.a\n")
        f.write("}\n")


if __name__ == "__main__":
    main()



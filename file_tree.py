import os

def generate_file_tree(startpath):
    tree = ['.']
    prefix = {startpath: ''}

    for root, dirs, files in os.walk(startpath):
        # Ignore .git directory and fish folder
        ignore_folders = ['.git', 'fish']
        for folder in ignore_folders:
            if folder in dirs:
                dirs.remove(folder)

        level = root.replace(startpath, '').count(os.sep)
        indent_subdir = '│   ' * (level - 1) + '├── '
        indent_file = '│   ' * level + '├── '

        if level > 0:
            tree.append(indent_subdir + os.path.basename(root) + '/')
        for i, f in enumerate(sorted(files)):
            tree_line = indent_file if i < len(files) - 1 or dirs else '│   ' * (level - 1) + '└── '
            tree.append(tree_line + f)

    return '\n'.join(tree)

def update_readme_with_tree(tree):
    with open("README.md", "r") as file:
        content = file.readlines()

    begin_marker = "<!-- BEGIN FILE TREE -->\n"
    end_marker = "<!-- END FILE TREE -->\n"
    begin_index = content.index(begin_marker) + 1
    end_index = content.index(end_marker)

    # Remove old tree
    del content[begin_index:end_index]

    # Insert new tree
    content.insert(begin_index, "```text\n" + tree + "\n```\n")

    with open("README.md", "w") as file:
        file.writelines(content)

if __name__ == "__main__":
    tree = generate_file_tree('.')
    update_readme_with_tree(tree)
    print("Updated README.md with the file tree.")


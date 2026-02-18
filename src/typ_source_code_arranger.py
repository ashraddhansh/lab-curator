import os
import re


def get_source_code(file_name):
    with open(file_name) as f:
        source_code_with_first_line = f.read()
        source_code = source_code_with_first_line.split("\n", maxsplit=1)[1]
        return source_code

def get_question(file_name):
    with open(file_name) as f:
        first_line = f.readline()
    question_name = first_line.split(" ", maxsplit=1)[1]
    return question_name


def terminal_output_cleaner(term_output_file):
    with open(term_output_file) as f:
        term_output = f.read()
    lines = term_output.splitlines()
    cleaned_output = "\n".join(lines[1:-1])
    return cleaned_output


def put_typ_content(dest_file, source_code, question_name, code_output, question_template, dest_dir):
    with open(question_template) as f:
        template_content = f.read()

    content = template_content.replace("{{source_code}}", source_code)
    content = content.replace("{{question_name}}", question_name)
    content = content.replace("{{code_output}}", code_output)
    dest_full_path = os.path.join(dest_dir, dest_file)

    with open(dest_full_path, "a") as f:
        f.write(content)


def typ_source_arranger(source_dir, dest_dir, term_out_dir, output_file_name, template_file):

    def source_file_sort_key(name):
        m = re.match(r"q(\d+)\.py$", name)
        if m:
            return (0, int(m.group(1)))
        return (1, name)

    def term_out_file_sort_key(name):
        m = re.match(r"q(\d+)\.txt$", name)
        if m:
            return (0, int(m.group(1)))
        return (1, name)

    source_files_unsorted = os.listdir(source_dir)
    source_files = sorted(source_files_unsorted, key=source_file_sort_key)

    term_out_files_unsorted = os.listdir(term_out_dir)
    term_out_files = sorted(term_out_files_unsorted, key=term_out_file_sort_key)

    if os.path.exists(os.path.join(dest_dir, output_file_name)):
        os.remove(os.path.join(dest_dir, output_file_name))


    for source_file, term_out_file in zip(source_files, term_out_files):
        if source_file.endswith(".py") and term_out_file.startswith("q"):
            question_name = get_question(os.path.join(source_dir, source_file))
            source_code = get_source_code(os.path.join(source_dir, source_file))
            term_output = terminal_output_cleaner(os.path.join(term_out_dir, term_out_file))
            put_typ_content(output_file_name, source_code, question_name,term_output, template_file, dest_dir)




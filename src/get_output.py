import subprocess
import os


def interactive_code_runner_python(file_name, output_dir, code_dir):
    subprocess.run(["script", "-q", "-c", f'python3 {os.path.join(code_dir, file_name)}',f'{output_dir}{file_name}_output.txt'])



def save_code_output_python(code_dir, output_dir):
    code_files = os.listdir(code_dir)
    for code_file in code_files:
        print("------ Running file:", code_file, "------")
        interactive_code_runner_python(code_file,output_dir, code_dir)






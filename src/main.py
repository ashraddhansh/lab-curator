from constants import *
from typ_source_code_arranger import typ_source_arranger
from get_output import save_code_output_python


def main():
    save_code_output_python(CODE_DIR, CODE_OUTPUT_DIR)
    typ_source_arranger(CODE_DIR, TYP_DIR, CODE_OUTPUT_DIR, "outputs.typ", QUES_TEMPLATE_FILE)

main()

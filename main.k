import file
import yaml
import kcl_json_merge_patch as kcl

# Read the input YAML file
_filepath_input = "input.yaml"  # You can replace this with `option()` if needed
_filepath_default = "defaults.yaml"  # You can replace this with `option()` if needed
# Read and decode YAML file content
_override_default = yaml.decode(file.read(_filepath_default))  # No need for type annotations
_override_input = yaml.decode(file.read(_filepath_input))  # No need for type annotations

_merged_input = kcl.merge(_override_default , _override_input)  # Merge default and input YAML values
# Merge loaded YAML values dynamically into the schema
mergedConfig = Offering {
    **_merged_input  # Spread operator to merge YAML values dynamically
}
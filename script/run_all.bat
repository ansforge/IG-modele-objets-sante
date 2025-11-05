call env\Scripts\activate

python mos2ml.py

cmd /c gofsh ./json -o ..

python fsh_files_organization.py

python generate_plantuml.py
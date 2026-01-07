with import <nixpkgs> {};
let
	pythonEnv = python313.withPackages (ps: [
		ps.streamlit
		ps.python-dotenv
	]);
in
mkShell {
	packages = [
		pythonEnv
		mypy
	];

	shellHook = "
	alias cdjournal='(cd cd-journal && micro)'
	";
}

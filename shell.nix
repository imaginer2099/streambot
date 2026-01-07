with import <nixpkgs> {};
let
	pythonEnv = python313.withPackages (ps: [
		ps.streamlit
	]);
in
mkShell {
	packages = [
		pythonEnv
		mypy
	];
}

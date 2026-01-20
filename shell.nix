with import <nixpkgs> {};
let
	pythonEnv = python313.withPackages (ps: [
		ps.streamlit
		ps.python-dotenv
		ps.openai
		ps.google-genai
	]);
in
mkShell {
	packages = [
		pythonEnv
		mypy
	];
}

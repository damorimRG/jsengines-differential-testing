# ENTENTE

ENTENTE is framework that combines two well-known testing techniques (test transplantation and differential testing) to find bugs in JavaScript engines.

We evaluated ENTENTE into five well-known JavaScript engines: chakra from Microsoft, JavaScriptCore from Apple, V8 from Google, SpiderMonkey from Mozilla, and hermes from Facebook.

Overall, we found 59 bugs using ENTENTE. Among them, 35 bugs were discovered with test transplantation (23 of these bugs confirmed and 12 fixed) and 24 bugs with differential testing (16 of these confirmed and 10 fixed).

## How to use ENTENTE

ENTENTE is a framework written in Python (version 3.7+). A brief description of the most important ENTENTE directories are next:

- `jsfuzz`: contains the ENTENTE scripts
- `fuzz_drivers`: performs ENTENTE test executions
- `seeds`: contains JavsScript test files used to feed ENTENTE
- `bin_fuzzers`: contains the fuzzers binaries


If your setup is already configured (keep reading if not), you just need to run tox in the current folder: `$> tox`

### Requirements
- Linux
- Python3.6
- [tox virtualenv](https://tox.readthedocs.io/en/latest/)
- ECMAScript host [eshost](https://github.com/bterlson/eshost-cli)
- JavaScript (engine) Version Updater [jsvu](https://github.com/GoogleChromeLabs/jsvu)

### Installation
1. Clone this repository
2. Download the compressed JS Engines file ([instructions here](https://github.com/damorim/jsfuzz/blob/master/js_engines/README_download_executables)) and extract it in `js_engines` folder
3. Extract quickfuzz.zip in `js_engines` folder
4. Open a terminal window, go to project folder and run these steps to create a simbolic link for radamsa and quickfuzz:
   1. $> sudo ln -s $(pwd)/js_engines/radamsa /usr/bin/radamsa
   2. $> sudo ln -s $(pwd)/js_engines/QuickFuzz /usr/bin/quickfuzz

### Running
- Open a terminal window, go to project folder and run: `$> tox`

### Docker
1. Download and extract the js engines (see js_engines/README files)
2. Build the image (`docker build -t jsfuzz .`)
3. Run the container (`docker run -t --rm -v /path/to/jsfuzz/repo:/jsfuzz jsfuzz`
4. See the output + logs

### Data

All data used and generated in this project is available online at:
https://drive.google.com/open?id=1YHXatZ5KO19yHxg73FN32Xtn5ayEXw7F

We are storing in a different medium because GitHub cannot handle such sized files.

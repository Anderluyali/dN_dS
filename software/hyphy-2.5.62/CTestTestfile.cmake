# CMake generated Testfile for 
# Source directory: /workspaces/dN_dS/software/hyphy-2.5.62
# Build directory: /workspaces/dN_dS/software/hyphy-2.5.62
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(UNIT-TESTS "bash" "run_unit_tests.sh")
set_tests_properties(UNIT-TESTS PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;680;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(CODON "HYPHYMP" "tests/hbltests/SimpleOptimizations/SmallCodon.bf")
set_tests_properties(CODON PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;681;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(PROTEIN "HYPHYMP" "CPU=1" "tests/hbltests/SimpleOptimizations/IntermediateProtein.bf")
set_tests_properties(PROTEIN PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;682;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(MTCODON "HYPHYMP" "tests/hbltests/libv3/mtDNA-code.wbf")
set_tests_properties(MTCODON PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;683;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(ALGAE "HYPHYMP" "tests/hbltests/libv3/algae-mtDNA.wbf")
set_tests_properties(ALGAE PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;684;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(CILIATES "HYPHYMP" "tests/hbltests/libv3/ciliate-code.wbf")
set_tests_properties(CILIATES PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;685;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(SLAC "HYPHYMP" "tests/hbltests/libv3/SLAC.wbf")
set_tests_properties(SLAC PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;686;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(SLAC-PARTITIONED "HYPHYMP" "tests/hbltests/libv3/SLAC-partitioned.wbf")
set_tests_properties(SLAC-PARTITIONED PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;687;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(FEL "HYPHYMP" "tests/hbltests/libv3/FEL.wbf")
set_tests_properties(FEL PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;688;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(MEME "HYPHYMP" "tests/hbltests/libv3/MEME.wbf")
set_tests_properties(MEME PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;689;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(MEME-PARTITIONED "HYPHYMP" "tests/hbltests/libv3/MEME-partitioned.wbf")
set_tests_properties(MEME-PARTITIONED PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;691;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(BUSTED "HYPHYMP" "tests/hbltests/libv3/BUSTED.wbf")
set_tests_properties(BUSTED PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;692;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(BUSTED-SRV "HYPHYMP" "tests/hbltests/libv3/BUSTED-SRV.wbf")
set_tests_properties(BUSTED-SRV PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;693;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(RELAX "HYPHYMP" "tests/hbltests/libv3/RELAX.wbf")
set_tests_properties(RELAX PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;694;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(FUBAR "HYPHYMP" "tests/hbltests/libv3/FUBAR.wbf")
set_tests_properties(FUBAR PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;695;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(BGM "HYPHYMP" "tests/hbltests/libv3/BGM.wbf")
set_tests_properties(BGM PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;696;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(CONTRAST-FEL "HYPHYMP" "tests/hbltests/libv3/CFEL.wbf")
set_tests_properties(CONTRAST-FEL PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;697;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(GARD "HYPHYMP" "tests/hbltests/libv3/GARD.wbf")
set_tests_properties(GARD PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;698;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(FADE "HYPHYMP" "tests/hbltests/libv3/FADE.wbf")
set_tests_properties(FADE PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;699;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")
add_test(ABSREL "HYPHYMP" "tests/hbltests/libv3/ABSREL.wbf")
set_tests_properties(ABSREL PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;700;add_test;/workspaces/dN_dS/software/hyphy-2.5.62/CMakeLists.txt;0;")

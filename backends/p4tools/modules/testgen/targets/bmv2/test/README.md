# P4Testgen BMv2 target tests

## CMake Files

+ P4Tests.cmake - Common test suite to add P4 tests from P4C submodules.
  + Run p4testgen on P4-16 V1Model p4s with the BMv2 target.
+ BMV2...Xfail.cmake - BMv2 xfails for the various BMv2 V1Model back ends.

## How to Run tests

+ All P4C submodule tests are tagged with 'testgen-p4c-bmv2' label

```bash
cd build/testgen
ctest -R testgen-p4c-bmv2
```


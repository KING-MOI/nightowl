#ifndef NIGHTOWL_TEST_HOME_H
#define NIGHTOWL_TEST_HOME_H

/// Name of the environment variable the loader sets ("NIGHTOWL_HOME").
const char *nightowl_test_home_key(void);

/// The throwaway directory NIGHTOWL_HOME was pointed at when the test bundle
/// loaded, or NULL if the loader has not run.
const char *nightowl_test_home_root(void);

#endif

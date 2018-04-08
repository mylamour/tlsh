
#ifdef __cplusplus
extern "C" {
#endif

extern int opterr;
extern int optind;
extern int optopt;
extern char * optarg;

int getopt( int nargc, char * const *nargv, const char *ostr);

#ifdef __cplusplus
}
#endif

# This .Rprofile was designed by Phil Cheeseman <aai@purdue.edu>.
# It will place R packages into subdirectories on a per-cluster and
# per-R version basis (so that you would not have to worry about
# various architectures/R versions/OSes between clusters).
#
# The downside is that once you start doing this, you'll need to redo
# all your install.packages() commands, but the upside is none of them 
# should interfere with each other.

# Collect the pieces (including name of the cluster and R install location).
# Use R version in lieu of install dir no special environment variables are set.
homedir <- system('echo ~',intern=TRUE)
rlibtop <- paste(homedir,'R',sep='/')
cluster <- strsplit(system('hostname -s',intern=TRUE),split='-')[[1]][1]
if (! is.na(Sys.getenv('RCAC_R_ROOT', unset=NA))) {
   rinstall <- Sys.getenv('RCAC_R_ROOT')
} else if (! is.na(Sys.getenv('R_ROOT', unset=NA))) {
   rinstall <- Sys.getenv('R_ROOT')
} else {
   rinstall <- strsplit(version[['version.string']], ' ')[[1]][3]
}
rinstall <- basename(rinstall)
runique <- paste(cluster,rinstall,sep='_')

# Assemble desired path to libraries unique to Anvil (e.g. "~/R/brown/3.6.0_gcc-6.3.0_brown/")
# R_LIBS_USER <- paste(rlibtop, cluster, runique, sep='/')
R_LIBS_USER <- paste(rlibtop, rinstall, sep='/')

# Ensure the directory exists and set the settings!
# Also define environment variable R_LIBS_USER in case it's
# referenced in system() calls during the R session.
system(paste('mkdir -p ',R_LIBS_USER,sep=''))
Sys.setenv(R_LIBS_USER=R_LIBS_USER)
.libPaths(R_LIBS_USER)

# And clean up auxillary variables.
rm(cluster, homedir, rinstall, rlibtop, runique)

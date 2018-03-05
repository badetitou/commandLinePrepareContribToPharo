# commandLinePrepareContribToPharo

This script downloads the last Pharo7 image.
Then it updates your pharo repository.
And it adds to Iceberg (inside Pharo) the repository.
At the end it creates the branch for the new contribution.

## How to use

`$ ./preparePharo.sh -t THE_ERROR_TAG -l PATH_TO_YOUR_PHARO_REPOSITORY`

## Example

`$ ./preparePharo.sh -t 20258_Fix_to_make_recursive_links_work -l /home/badetitou/git/pharo`

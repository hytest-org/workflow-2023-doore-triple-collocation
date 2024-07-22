# Triple Collocation Notebooks

## Workflows

This is a collection of notebooks giving a workflow for how Triple Collocation (TC) can be applied to evapotranspiration (ET) data to derived data uncertainties and subsequently evaluate agreement between ET data sets. The workflow has six parts, two associated with setting up the collocated ET data sets, two associated with applying TC to the ET data sets, one exploring the relative agreement between the ET data sets, and one exploring TC and agreement results after aggregating the ET data sets to certain geographic regions. They should be run in order and are as follows:

1. [Compiling the ET Monthly Data Sets](workflow/0_compile_datasets.ipynb)
2. [Regridding the ET Data Sets](workflow/1_regrid.ipynb)
3. [Applying Triple Collocation Uncertainty Analysis](workflow/2_TC_application.ipynb)
4. [Applying Extended Collocation Uncertainty Analysis](workflow/3_EC_application.ipynb)
5. [Assessing the Relative Agreement between ET Data Sets](workflow/4_dataset_agreement.ipynb)
6. [Utilizing TC and Relative Agreement in Regional Analyses](workflow/5_regional_analysis.ipynb)

Each notebook details the method taken in the workflow and discusses the results.

## Functions

To perform the analysis in the workflows, two different functions were created to calculate the error variances using TC. These functions are placed within their own notebooks to accommodate the explanation of the mathematical background. The functions are:

1. [``tc_covar``](TC/TC_function.ipynb), which computes the TC error variances using the covariance method.
2. [``ec_covar`` and ``ec_covar_multi``](TC/EC_function.ipynb), which computes the EC error covariance matrix and optional unbiased SNR for a collocated or multiple collocated inputs, respectively.

> Note that ``ec_covar_multi`` is just a more generic version of ``tc_covar`` and ``ec_covar``. It produces the exact same results, but has the additional functionality that allows for performing EC along multiple collocated inputs simultaneously.

## Theoretical Test Examples

Besides applying TC to ET data sets, another set of [example notebooks](Examples/) were produced to test the efficacy of TC on theoretical data sets to ensure it is producing the expected results. It is recommend to check these example notebooks out for additional background on the TC method. Additionally, an example notebook was created showing how to implement [``dask``](https://www.dask.org/) with the created TC functions for use with large out of memory data sets.


# Installation

To run the notebooks, they must first be downloaded by running:

```
git clone https://github.com/hytest-org/workflow-2023-doore-triple-collocation.git
```

Then the dependencies can be installed from the ``conda`` [environment file](environment.yml) included in the repo via:

```
conda env create -f environment.yml
```

This will create an environment called ``hytest_tc_workflow``, which can be activated for use in running the workflows.


# Authors

- Keith Doore - *Lead Author* - [USGS Central Midwest Water Science Center](https://www.usgs.gov/centers/cm-water)
- Thomas M. Over - *Contributing Author* - [USGS Central Midwest Water Science Center](https://www.usgs.gov/centers/cm-water)
- Timothy O. Hodson - *Contributing Author* - [USGS Water Resources Mission Area](https://www.usgs.gov/mission-areas/water-resources)
- Sydney S. Foks - *Contributing Author* - [USGS Water Resources Mission Area](https://www.usgs.gov/mission-areas/water-resources)


# License

This project is licensed under the Creative Commons CC0 1.0 Universal License.


# Suggested Citation

TBD

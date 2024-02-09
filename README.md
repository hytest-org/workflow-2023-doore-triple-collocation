# Triple Collocation Workflows

This is a collection of notebooks giving a workflow for how Triple Collocation (TC) can be applied to evapotranspiration (ET) data to get a better understanding of the uncertainties within the ET data sets. The workflow has five parts, two associated with setting up the collocated ET data sets, two associated with applying TC to the ET data sets, and one exploring the relative biases between the ET data sets. They should be run in order and are as follows:

1. [Compiling the ET Monthly Data Sets](workflow/0_compile_datasets.ipynb)
2. [Regridding the ET Data Sets](workflow/1_regrid.ipynb)
3. [Applying Triple Collocation Uncertainty Analysis](workflow/2_TC_application.ipynb)
4. [Applying Extended Collocation Uncertainty Analysis](workflow/3_EC_application.ipynb)
5. [Assessing the Relative Bias between ET Data Sets](workflow/4_Bias.ipynb)

Each notebook details the method taken in the workflow and discusses the results.

# Triple Collocation functions

To perform the analysis in the workflows, two different functions were created to calculate the error variances using TC. These functions are placed within their own notebooks to accommodate the explanation of the mathematical background. The functions are:

1. [``tc_covar``](TC/TC_function.ipynb), which computes the TC error variances using the covariance method.
2. [``ec_covar`` and ``ec_covar_multi``](TC/EC_function.ipynb), which computes the EC error covariance matrix and optional unbiased SNR for a collocated or multiple collocated inputs, respectively.

> Note that ``ec_covar_multi`` is just a more generic version of ``tc_covar`` and ``ec_covar``. It produces the exact same results, but has the additional functionality that allows for performing EC along multiple collocated inputs simultaneously.

# Triple Collocation Theoretical Test Examples

Besides applying TC to ET data sets, another set of [example notebooks](Examples/) were produced to test the efficacy of TC on theoretical data sets to ensure it is producing the expected results. It is recommend to check these example notebooks out for additional background on the TC method. Additionally, an example notebook was created showing how to implement [``dask``](https://www.dask.org/) with the created TC functions for use with large out of memory data sets.
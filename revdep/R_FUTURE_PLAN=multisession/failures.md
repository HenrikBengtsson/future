# ChromSCape

<details>

* Version: 1.2.0
* GitHub: https://github.com/vallotlab/ChromSCape
* Source code: https://github.com/cran/ChromSCape
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 264

Run `revdep_details(, "ChromSCape")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        data   1.3Mb
        doc    2.9Mb
        www    1.9Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    CompareWilcox: no visible binding for global variable ‘annot.’
    bams_to_matrix_indexes: no visible binding for global variable
      ‘files_dir_list’
    filter_correlated_cell_scExp: no visible binding for global variable
      ‘run_tsne’
    generate_analysis: no visible binding for global variable ‘k’
    generate_analysis: no visible binding for global variable
      ‘clusterConsensus’
    get_most_variable_cyto: no visible binding for global variable
      ‘cytoBand’
    ...
    plot_reduced_dim_scExp: no visible binding for global variable ‘V1’
    plot_reduced_dim_scExp: no visible binding for global variable ‘V2’
    plot_reduced_dim_scExp: no visible binding for global variable
      ‘cluster’
    subset_bam_call_peaks: no visible binding for global variable
      ‘merged_bam’
    Undefined global functions or variables:
      Fri_cyto Gain_or_Loss V1 V2 absolute_value annot. cluster
      clusterConsensus cytoBand files_dir_list genes k merged_bam ncells
      run_tsne sample_id total_counts
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: raw_counts_to_sparse_matrix.Rd:6-8: Dropping empty section \source
    ```


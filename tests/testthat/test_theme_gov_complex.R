context('theme_gov() works with complex examples')

test_that(
  'theme_gov can replicate a rug and point plot',
  {
    
    # Check whether comparison file exists, and delete if so
    
    test_png <- file.path('figures', 'test_rugpoint_test.png')
    ref_png <- file.path('figures', 'test_rugpoint_reference.png')
    
    if (file.exists(test_png)) file.remove(test_png)
    
    test_that(
      'test_png does not already exist',
      {
        expect_false(file.exists(test_png))
      }
    )
    
    # Create a new figure as png
    
    p <- ggplot2::ggplot(mtcars) + 
      ggplot2::aes_(
        ~wt, 
        ~mpg, 
        colour = ~factor(cyl), 
        group = ~cyl) + 
      ggplot2::geom_rug() +
      ggplot2::geom_point() + 
      govstyle::theme_gov(base_colour = 'black') + 
      ggplot2::scale_colour_manual(
        values = unname(govstyle::gov_cols[c('red', 'purple','green')])
      ) + 
      ggplot2::theme(legend.position='bottom') + 
      ggplot2::ylab('Miles per gallon (mpg)') +
      ggplot2::ylab('Weight (1000 lbs)')
    
    ggplot2::ggsave(
      width = 5,
      height = 5,
      filename = test_png,
      plot = p
    )
    
    # Check that the new file was created
    
    test_that(
      'test_png was created',
      {
        expect_true(file.exists(test_png))
      }
    )
    
    # Compare new figure with reference
    
    visualTest::isSimilar(
      file = ref_png,
      fingerprint = visualTest::getFingerprint(
        file = test_png
      ),
      threshold = 1e-3
    )
    
  }
)

test_that(
  'theme_gov can replicate a geom_path plot',
  {
    
    # Check whether comparison file exists, and delete if so
    
    test_png <- file.path('figures', 'test_path_test.png')
    ref_png <- file.path('figures', 'test_path_reference.png')
    
    if (file.exists(test_png)) file.remove(test_png)
    
    test_that(
      'test_png does not already exist',
      {
        expect_false(file.exists(test_png))
      }
    )
    
    # Create a new figure as png
    
    p <- ggplot2::ggplot(GVA) +
      ggplot2::aes(
        y = GVA,
        x = year,
        colour = sector
      ) +
      ggplot2::geom_path() +
      govstyle::theme_gov()
    
    ggplot2::ggsave(
      width = 5,
      height = 5,
      filename = test_png,
      plot = p
    )
    
    # Check that the new file was created
    
    test_that(
      'test_png was created',
      {
        expect_true(file.exists(test_png))
      }
    )
    
    # Compare new figure with reference
    
    visualTest::isSimilar(
      file = ref_png,
      fingerprint = visualTest::getFingerprint(
        file = test_png
      ),
      threshold = 1e-3
    )
    
  }
)

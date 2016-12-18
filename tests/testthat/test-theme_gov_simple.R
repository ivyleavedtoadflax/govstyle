context('theme_gov() works with simple examples')

test_that(
  'theme_gov can replicate a rug and point plot',
  {
    
    # Check whether comparison file exists, and delete if so
    
    ref_png <- file.path('figures', 'test-theme_gov-reference.png')
    test_png <- file.path('figures', 'test-theme_gov-test.png')
    
    if (file.exists(test_png)) file.remove(test_png)
    
    test_that(
      'test_png does not already exist',
      {
        expect_false(file.exists(test_png))
      }
    )
    
    # Create a new figure as png
    
    p <- ggplot2::ggplot(
      data = mtcars,
      aes(
        x = mpg,
        y = wt
      )
    ) +
      geom_point() +
      theme_gov()
    
    ggsave(
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

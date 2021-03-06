context('check_pal() works as expected')

test_that(
  'check_pal() can replicate pie chart',
  {
    
    # Check whether comparison file exists, and delete if so
    
    test_png <- file.path('figures', 'test-check_pal_test.png')
    ref_png <- file.path('figures', 'test-check_pal_reference.png')
    
    if (file.exists(test_png)) file.remove(test_png)
    
    test_that(
      'test_png does not already exist',
      {
        expect_false(file.exists(test_png))
      }
    )
    
    # Create a new figure as png
    
    png(
      file = test_png,
      width = 480,
      height = 480
    )
    check_pal()
    dev.off()
    
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

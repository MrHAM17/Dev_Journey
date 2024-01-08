package com.housitbuyrentsellproperty.app.modules.reviewsgallery.ui

import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityReviewsGalleryBinding
import com.housitbuyrentsellproperty.app.modules.reviewsgallery.`data`.viewmodel.ReviewsGalleryVM
import kotlin.String
import kotlin.Unit

class ReviewsGalleryActivity :
    BaseActivity<ActivityReviewsGalleryBinding>(R.layout.activity_reviews_gallery) {
  private val viewModel: ReviewsGalleryVM by viewModels<ReviewsGalleryVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.reviewsGalleryVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "REVIEWS_GALLERY_ACTIVITY"

  }
}

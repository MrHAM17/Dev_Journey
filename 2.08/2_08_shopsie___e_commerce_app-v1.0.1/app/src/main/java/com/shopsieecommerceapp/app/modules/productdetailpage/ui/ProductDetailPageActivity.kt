package com.shopsieecommerceapp.app.modules.productdetailpage.ui

import android.net.Uri
import androidx.activity.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseActivity
import com.shopsieecommerceapp.app.databinding.ActivityProductDetailPageBinding
import com.shopsieecommerceapp.app.modules.productdetailpage.`data`.model.ImageSliderProductCarouselModel
import com.shopsieecommerceapp.app.modules.productdetailpage.`data`.viewmodel.ProductDetailPageVM
import kotlin.String
import kotlin.Unit
import kotlin.collections.ArrayList

class ProductDetailPageActivity :
    BaseActivity<ActivityProductDetailPageBinding>(R.layout.activity_product_detail_page) {
  private val imageUri: Uri =
      Uri.parse("android.resource://com.shopsieecommerceapp.app/drawable/img_rectangle_11")


  private val imageSliderProductCarouselItems: ArrayList<ImageSliderProductCarouselModel> =
      arrayListOf(ImageSliderProductCarouselModel(imageImage =
  imageUri.toString()),ImageSliderProductCarouselModel(imageImage = imageUri.toString()))


  private val viewModel: ProductDetailPageVM by viewModels<ProductDetailPageVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val productCarouselAdapter = ProductCarouselAdapter(imageSliderProductCarouselItems,true)
    binding.imageSliderProductCarousel.adapter = productCarouselAdapter
    binding.imageSliderProductCarousel.onIndicatorProgress = { selectingPosition, progress ->
      binding.indicatorPagerIndicator.onPageScrolled(selectingPosition, progress)
    }
    binding.indicatorPagerIndicator.updateIndicatorCounts(binding.imageSliderProductCarousel.indicatorCount)
    binding.productDetailPageVM = viewModel
  }

  override fun onPause(): Unit {
    binding.imageSliderProductCarousel.pauseAutoScroll()
    super.onPause()
  }

  override fun onResume(): Unit {
    super.onResume()
    binding.imageSliderProductCarousel.resumeAutoScroll()
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "PRODUCT_DETAIL_PAGE_ACTIVITY"

  }
}

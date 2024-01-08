package com.streetstyleecommerceapp.app.modules.product.ui

import android.net.Uri
import androidx.activity.viewModels
import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.base.BaseActivity
import com.streetstyleecommerceapp.app.databinding.ActivityProductBinding
import com.streetstyleecommerceapp.app.modules.product.`data`.model.ImageSliderTwelveModel
import com.streetstyleecommerceapp.app.modules.product.`data`.viewmodel.ProductVM
import kotlin.String
import kotlin.Unit
import kotlin.collections.ArrayList

class ProductActivity : BaseActivity<ActivityProductBinding>(R.layout.activity_product) {
  private val imageUri: Uri =
      Uri.parse("android.resource://com.streetstyleecommerceapp.app/drawable/img_rectangle_14")


  private val imageSliderTwelveItems: ArrayList<ImageSliderTwelveModel> =
      arrayListOf(ImageSliderTwelveModel(imageImage =
  imageUri.toString()),ImageSliderTwelveModel(imageImage = imageUri.toString()))


  private val viewModel: ProductVM by viewModels<ProductVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val twelveAdapter = TwelveAdapter(imageSliderTwelveItems,true)
    binding.imageSliderTwelve.adapter = twelveAdapter
    binding.productVM = viewModel
  }

  override fun onPause(): Unit {
    binding.imageSliderTwelve.pauseAutoScroll()
    super.onPause()
  }

  override fun onResume(): Unit {
    super.onResume()
    binding.imageSliderTwelve.resumeAutoScroll()
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "PRODUCT_ACTIVITY"

  }
}

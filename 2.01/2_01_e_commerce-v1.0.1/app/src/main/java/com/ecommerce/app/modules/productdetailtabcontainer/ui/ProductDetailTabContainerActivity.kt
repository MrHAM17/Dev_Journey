package com.ecommerce.app.modules.productdetailtabcontainer.ui

import android.net.Uri
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityProductDetailTabContainerBinding
import com.ecommerce.app.modules.productdetailtabcontainer.`data`.model.ImageSliderWidgetModel
import com.ecommerce.app.modules.productdetailtabcontainer.`data`.viewmodel.ProductDetailTabContainerVM
import com.ecommerce.app.modules.search.ui.SearchActivity
import com.google.android.material.tabs.TabLayoutMediator
import kotlin.String
import kotlin.Unit
import kotlin.collections.ArrayList

class ProductDetailTabContainerActivity :
    BaseActivity<ActivityProductDetailTabContainerBinding>(R.layout.activity_product_detail_tab_container)
    {
  private val imageUri: Uri =
      Uri.parse("android.resource://com.ecommerce.app/drawable/img_product_image_238x375")


  private val imageSliderWidgetItems: ArrayList<ImageSliderWidgetModel> =
      arrayListOf(ImageSliderWidgetModel(imageProductImage =
  imageUri.toString()),ImageSliderWidgetModel(imageProductImage = imageUri.toString()))


  private val viewModel: ProductDetailTabContainerVM by viewModels<ProductDetailTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val widgetAdapter = WidgetAdapter(imageSliderWidgetItems,true)
    binding.imageSliderWidget.adapter = widgetAdapter
    binding.imageSliderWidget.onIndicatorProgress = { selectingPosition, progress ->
      binding.indicatorSettings.onPageScrolled(selectingPosition, progress)
    }
    binding.indicatorSettings.updateIndicatorCounts(binding.imageSliderWidget.indicatorCount)
    binding.productDetailTabContainerVM = viewModel
    val adapter =
    ProductDetailTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = ProductDetailTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun onPause(): Unit {
      binding.imageSliderWidget.pauseAutoScroll()
      super.onPause()
    }

    override fun onResume(): Unit {
      super.onResume()
      binding.imageSliderWidget.resumeAutoScroll()
    }

    override fun setUpClicks(): Unit {
      binding.imageArrowLeft.setOnClickListener {
        finish()
      }
      binding.imageSearchIcon.setOnClickListener {
        val destIntent = SearchActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }

    companion object {
      const val TAG: String = "PRODUCT_DETAIL_TAB_CONTAINER_ACTIVITY"

    }
  }

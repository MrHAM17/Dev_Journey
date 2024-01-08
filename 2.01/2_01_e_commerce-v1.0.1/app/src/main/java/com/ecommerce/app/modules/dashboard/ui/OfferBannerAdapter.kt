package com.ecommerce.app.modules.dashboard.ui

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.viewbinding.ViewBinding
import com.asksira.loopingviewpager.LoopingPagerAdapter
import com.ecommerce.app.databinding.SlideritemDashboard1Binding
import com.ecommerce.app.modules.dashboard.`data`.model.ImageSliderOfferBannerModel
import java.util.ArrayList
import kotlin.Boolean
import kotlin.Int

class OfferBannerAdapter(
  val dataList: ArrayList<ImageSliderOfferBannerModel>,
  val mIsInfinite: Boolean
) : LoopingPagerAdapter<ImageSliderOfferBannerModel>(dataList, mIsInfinite) {
  override fun bindView(
    binding: ViewBinding,
    listPosition: Int,
    viewType: Int
  ) {
    if (binding is SlideritemDashboard1Binding) {
      binding.imageSliderOfferBannerModel = dataList[listPosition]
    }
  }

  override fun inflateView(
    viewType: Int,
    container: ViewGroup,
    listPosition: Int
  ): ViewBinding {
    val itemBinding =  SlideritemDashboard1Binding.inflate(
    LayoutInflater.from(container.context),
                    container,
                    false
    )
    return itemBinding
  }
}

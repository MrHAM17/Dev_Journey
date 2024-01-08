package com.shopsieecommerceapp.app.modules.productdetailpage.ui

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.viewbinding.ViewBinding
import com.asksira.loopingviewpager.LoopingPagerAdapter
import com.shopsieecommerceapp.app.databinding.SlideritemProductDetailPage1Binding
import com.shopsieecommerceapp.app.modules.productdetailpage.`data`.model.ImageSliderProductCarouselModel
import java.util.ArrayList
import kotlin.Boolean
import kotlin.Int

class ProductCarouselAdapter(
  val dataList: ArrayList<ImageSliderProductCarouselModel>,
  val mIsInfinite: Boolean
) : LoopingPagerAdapter<ImageSliderProductCarouselModel>(dataList, mIsInfinite) {
  override fun bindView(
    binding: ViewBinding,
    listPosition: Int,
    viewType: Int
  ) {
    if (binding is SlideritemProductDetailPage1Binding) {
      binding.imageSliderProductCarouselModel = dataList[listPosition]
    }
  }

  override fun inflateView(
    viewType: Int,
    container: ViewGroup,
    listPosition: Int
  ): ViewBinding {
    val itemBinding =  SlideritemProductDetailPage1Binding.inflate(
    LayoutInflater.from(container.context),
                    container,
                    false
    )
    return itemBinding
  }
}

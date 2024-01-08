package com.streetstyleecommerceapp.app.modules.product.ui

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.viewbinding.ViewBinding
import com.asksira.loopingviewpager.LoopingPagerAdapter
import com.streetstyleecommerceapp.app.databinding.SlideritemProduct1Binding
import com.streetstyleecommerceapp.app.modules.product.`data`.model.ImageSliderTwelveModel
import java.util.ArrayList
import kotlin.Boolean
import kotlin.Int

class TwelveAdapter(
  val dataList: ArrayList<ImageSliderTwelveModel>,
  val mIsInfinite: Boolean
) : LoopingPagerAdapter<ImageSliderTwelveModel>(dataList, mIsInfinite) {
  override fun bindView(
    binding: ViewBinding,
    listPosition: Int,
    viewType: Int
  ) {
    if (binding is SlideritemProduct1Binding) {
      binding.imageSliderTwelveModel = dataList[listPosition]
    }
  }

  override fun inflateView(
    viewType: Int,
    container: ViewGroup,
    listPosition: Int
  ): ViewBinding {
    val itemBinding =  SlideritemProduct1Binding.inflate(
    LayoutInflater.from(container.context),
                    container,
                    false
    )
    return itemBinding
  }
}

package com.fashionistaecommerceapp.app.modules.orderstatus.ui

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.viewbinding.ViewBinding
import com.asksira.loopingviewpager.LoopingPagerAdapter
import com.fashionistaecommerceapp.app.databinding.SlideritemOrderStatus1Binding
import com.fashionistaecommerceapp.app.modules.orderstatus.`data`.model.ImageSliderUnsplashVFrcRtEQKLEightModel
import java.util.ArrayList
import kotlin.Boolean
import kotlin.Int

class UnsplashVFrcRtEQKLEightAdapter(
  val dataList: ArrayList<ImageSliderUnsplashVFrcRtEQKLEightModel>,
  val mIsInfinite: Boolean
) : LoopingPagerAdapter<ImageSliderUnsplashVFrcRtEQKLEightModel>(dataList, mIsInfinite) {
  override fun bindView(
    binding: ViewBinding,
    listPosition: Int,
    viewType: Int
  ) {
    if (binding is SlideritemOrderStatus1Binding) {
      binding.imageSliderUnsplashVFrcRtEQKLEightModel = dataList[listPosition]
    }
  }

  override fun inflateView(
    viewType: Int,
    container: ViewGroup,
    listPosition: Int
  ): ViewBinding {
    val itemBinding =  SlideritemOrderStatus1Binding.inflate(
    LayoutInflater.from(container.context),
                    container,
                    false
    )
    return itemBinding
  }
}

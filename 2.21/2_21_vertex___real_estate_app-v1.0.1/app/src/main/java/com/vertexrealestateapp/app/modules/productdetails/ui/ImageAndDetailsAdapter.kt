package com.vertexrealestateapp.app.modules.productdetails.ui

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.viewbinding.ViewBinding
import com.asksira.loopingviewpager.LoopingPagerAdapter
import com.vertexrealestateapp.app.databinding.SlideritemProductDetails1Binding
import com.vertexrealestateapp.app.modules.productdetails.`data`.model.ImageSliderImageAndDetailsModel
import java.util.ArrayList
import kotlin.Boolean
import kotlin.Int

class ImageAndDetailsAdapter(
  val dataList: ArrayList<ImageSliderImageAndDetailsModel>,
  val mIsInfinite: Boolean
) : LoopingPagerAdapter<ImageSliderImageAndDetailsModel>(dataList, mIsInfinite) {
  override fun bindView(
    binding: ViewBinding,
    listPosition: Int,
    viewType: Int
  ) {
    if (binding is SlideritemProductDetails1Binding) {
      binding.imageSliderImageAndDetailsModel = dataList[listPosition]
    }
  }

  override fun inflateView(
    viewType: Int,
    container: ViewGroup,
    listPosition: Int
  ): ViewBinding {
    val itemBinding =  SlideritemProductDetails1Binding.inflate(
    LayoutInflater.from(container.context),
                    container,
                    false
    )
    return itemBinding
  }
}

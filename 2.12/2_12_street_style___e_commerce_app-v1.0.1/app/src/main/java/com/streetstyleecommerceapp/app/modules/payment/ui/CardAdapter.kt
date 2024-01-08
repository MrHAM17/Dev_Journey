package com.streetstyleecommerceapp.app.modules.payment.ui

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.viewbinding.ViewBinding
import com.asksira.loopingviewpager.LoopingPagerAdapter
import com.streetstyleecommerceapp.app.databinding.SlideritemPayment1Binding
import com.streetstyleecommerceapp.app.modules.payment.`data`.model.ImageSliderCardModel
import java.util.ArrayList
import kotlin.Boolean
import kotlin.Int

class CardAdapter(
  val dataList: ArrayList<ImageSliderCardModel>,
  val mIsInfinite: Boolean
) : LoopingPagerAdapter<ImageSliderCardModel>(dataList, mIsInfinite) {
  override fun bindView(
    binding: ViewBinding,
    listPosition: Int,
    viewType: Int
  ) {
    if (binding is SlideritemPayment1Binding) {
      binding.imageSliderCardModel = dataList[listPosition]
    }
  }

  override fun inflateView(
    viewType: Int,
    container: ViewGroup,
    listPosition: Int
  ): ViewBinding {
    val itemBinding =  SlideritemPayment1Binding.inflate(
    LayoutInflater.from(container.context),
                    container,
                    false
    )
    return itemBinding
  }
}

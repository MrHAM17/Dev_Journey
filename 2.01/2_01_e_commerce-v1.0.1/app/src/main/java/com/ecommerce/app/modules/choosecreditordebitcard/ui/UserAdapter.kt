package com.ecommerce.app.modules.choosecreditordebitcard.ui

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.viewbinding.ViewBinding
import com.asksira.loopingviewpager.LoopingPagerAdapter
import com.ecommerce.app.databinding.SlideritemChooseCreditOrDebitCard1Binding
import com.ecommerce.app.modules.choosecreditordebitcard.`data`.model.ImageSliderUserModel
import java.util.ArrayList
import kotlin.Boolean
import kotlin.Int

class UserAdapter(
  val dataList: ArrayList<ImageSliderUserModel>,
  val mIsInfinite: Boolean
) : LoopingPagerAdapter<ImageSliderUserModel>(dataList, mIsInfinite) {
  override fun bindView(
    binding: ViewBinding,
    listPosition: Int,
    viewType: Int
  ) {
    if (binding is SlideritemChooseCreditOrDebitCard1Binding) {
      binding.imageSliderUserModel = dataList[listPosition]
    }
  }

  override fun inflateView(
    viewType: Int,
    container: ViewGroup,
    listPosition: Int
  ): ViewBinding {
    val itemBinding =  SlideritemChooseCreditOrDebitCard1Binding.inflate(
    LayoutInflater.from(container.context),
                    container,
                    false
    )
    return itemBinding
  }
}

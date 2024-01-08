package com.shopsieecommerceapp.app.modules.singlepost.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.shopsieecommerceapp.app.databinding.BottomsheetSinglePostBinding
import com.shopsieecommerceapp.app.modules.singlepost.`data`.viewmodel.SinglePostVM
import kotlin.String
import kotlin.Unit

class SinglePostBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetSinglePostBinding>(R.layout.bottomsheet_single_post) {
  private val viewModel: SinglePostVM by viewModels<SinglePostVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.singlePostVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "SINGLE_POST_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): SinglePostBottomsheet {
      val fragment = SinglePostBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}

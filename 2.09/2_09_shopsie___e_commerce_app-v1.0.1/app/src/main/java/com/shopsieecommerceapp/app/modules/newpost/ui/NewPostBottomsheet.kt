package com.shopsieecommerceapp.app.modules.newpost.ui

import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.shopsieecommerceapp.app.appcomponents.views.ImagePickerFragmentDialog
import com.shopsieecommerceapp.app.databinding.BottomsheetNewPostBinding
import com.shopsieecommerceapp.app.modules.newpost.`data`.viewmodel.NewPostVM
import kotlin.String
import kotlin.Unit

class NewPostBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetNewPostBinding>(R.layout.bottomsheet_new_post) {
  private val viewModel: NewPostVM by viewModels<NewPostVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.newPostVM = viewModel
  }

  override fun setUpClicks(): Unit {


    binding.btnSettings.setOnClickListener {
      ImagePickerFragmentDialog().show(childFragmentManager)
      { path ->//TODO HANDLE DATA
      }

    }
  }

  companion object {
    const val TAG: String = "NEW_POST_BOTTOMSHEET"

  }
}

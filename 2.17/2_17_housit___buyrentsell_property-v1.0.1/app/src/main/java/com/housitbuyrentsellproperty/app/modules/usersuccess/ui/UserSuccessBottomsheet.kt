package com.housitbuyrentsellproperty.app.modules.usersuccess.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.housitbuyrentsellproperty.app.databinding.BottomsheetUserSuccessBinding
import com.housitbuyrentsellproperty.app.extensions.loadFragment
import com.housitbuyrentsellproperty.app.modules.home.ui.HomeFragment
import com.housitbuyrentsellproperty.app.modules.usersuccess.`data`.viewmodel.UserSuccessVM
import kotlin.String
import kotlin.Unit

class UserSuccessBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetUserSuccessBinding>(R.layout.bottomsheet_user_success)
    {
  private val viewModel: UserSuccessVM by viewModels<UserSuccessVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.userSuccessVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnStartExploring.setOnClickListener {
      val destFragment = HomeFragment.getInstance(null)
      requireActivity().loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = HomeFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
      dismiss()
    }
  }

  companion object {
    const val TAG: String = "USER_SUCCESS_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): UserSuccessBottomsheet {
      val fragment = UserSuccessBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}

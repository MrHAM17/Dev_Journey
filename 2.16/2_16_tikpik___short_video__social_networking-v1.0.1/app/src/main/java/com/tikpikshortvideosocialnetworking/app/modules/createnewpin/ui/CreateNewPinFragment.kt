package com.tikpikshortvideosocialnetworking.app.modules.createnewpin.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentCreateNewPinBinding
import com.tikpikshortvideosocialnetworking.app.modules.createnewpin.`data`.viewmodel.CreateNewPinVM
import com.tikpikshortvideosocialnetworking.app.modules.setyourfingerprint.ui.SetYourFingerprintActivity
import kotlin.String
import kotlin.Unit

class CreateNewPinFragment :
    BaseFragment<FragmentCreateNewPinBinding>(R.layout.fragment_create_new_pin) {
  private val viewModel: CreateNewPinVM by viewModels<CreateNewPinVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.createNewPinVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnContinue.setOnClickListener {
      val destIntent = SetYourFingerprintActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "CREATE_NEW_PIN_FRAGMENT"


    fun getInstance(bundle: Bundle?): CreateNewPinFragment {
      val fragment = CreateNewPinFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}

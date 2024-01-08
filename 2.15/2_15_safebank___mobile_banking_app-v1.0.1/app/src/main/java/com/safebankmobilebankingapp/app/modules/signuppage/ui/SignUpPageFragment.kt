package com.safebankmobilebankingapp.app.modules.signuppage.ui

import androidx.fragment.app.viewModels
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseFragment
import com.safebankmobilebankingapp.app.databinding.FragmentSignUpPageBinding
import com.safebankmobilebankingapp.app.modules.countryorregion.ui.CountryOrRegionActivity
import com.safebankmobilebankingapp.app.modules.signuppage.`data`.model.SpinnerJanModel
import com.safebankmobilebankingapp.app.modules.signuppage.`data`.model.SpinnerUnitedEstateModel
import com.safebankmobilebankingapp.app.modules.signuppage.`data`.viewmodel.SignUpPageVM
import kotlin.String
import kotlin.Unit

class SignUpPageFragment : BaseFragment<FragmentSignUpPageBinding>(R.layout.fragment_sign_up_page) {
  private val viewModel: SignUpPageVM by viewModels<SignUpPageVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    viewModel.spinnerJanList.value = mutableListOf(
    SpinnerJanModel("Item1"),
    SpinnerJanModel("Item2"),
    SpinnerJanModel("Item3"),
    SpinnerJanModel("Item4"),
    SpinnerJanModel("Item5")
    )
    val spinnerJanAdapter =
    SpinnerJanAdapter(requireActivity(),R.layout.spinner_item,viewModel.spinnerJanList.value?:
    mutableListOf())
    binding.spinnerJan.adapter = spinnerJanAdapter
    viewModel.spinnerUnitedEstateList.value = mutableListOf(
    SpinnerUnitedEstateModel("Item1"),
    SpinnerUnitedEstateModel("Item2"),
    SpinnerUnitedEstateModel("Item3"),
    SpinnerUnitedEstateModel("Item4"),
    SpinnerUnitedEstateModel("Item5")
    )
    val spinnerUnitedEstateAdapter =
    SpinnerUnitedEstateAdapter(requireActivity(),R.layout.spinner_item,viewModel.spinnerUnitedEstateList.value?:
    mutableListOf())
    binding.spinnerUnitedEstate.adapter = spinnerUnitedEstateAdapter
    binding.signUpPageVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSignUp.setOnClickListener {
      val destIntent = CountryOrRegionActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "SIGN_UP_PAGE_FRAGMENT"

  }
}

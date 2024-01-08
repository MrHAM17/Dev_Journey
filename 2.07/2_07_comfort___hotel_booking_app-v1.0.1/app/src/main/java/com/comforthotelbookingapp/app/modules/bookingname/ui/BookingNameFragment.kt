package com.comforthotelbookingapp.app.modules.bookingname.ui

import androidx.fragment.app.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseFragment
import com.comforthotelbookingapp.app.databinding.FragmentBookingNameBinding
import com.comforthotelbookingapp.app.modules.bookingname.`data`.viewmodel.BookingNameVM
import com.comforthotelbookingapp.app.modules.choosepaymentmethod.ui.ChoosePaymentMethodActivity
import kotlin.String
import kotlin.Unit

class BookingNameFragment : BaseFragment<FragmentBookingNameBinding>(R.layout.fragment_booking_name)
    {
  private val viewModel: BookingNameVM by viewModels<BookingNameVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.bookingNameVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnContinue.setOnClickListener {
      val destIntent = ChoosePaymentMethodActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "BOOKING_NAME_FRAGMENT"

  }
}

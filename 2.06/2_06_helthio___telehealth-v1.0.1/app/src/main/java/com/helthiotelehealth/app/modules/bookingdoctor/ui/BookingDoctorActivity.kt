package com.helthiotelehealth.app.modules.bookingdoctor.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityBookingDoctorBinding
import com.helthiotelehealth.app.modules.bookingdoctor.`data`.viewmodel.BookingDoctorVM
import com.helthiotelehealth.app.modules.chatwithdoctor.ui.ChatWithDoctorActivity
import kotlin.String
import kotlin.Unit

class BookingDoctorActivity :
    BaseActivity<ActivityBookingDoctorBinding>(R.layout.activity_booking_doctor) {
  private val viewModel: BookingDoctorVM by viewModels<BookingDoctorVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.bookingDoctorVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnCheckout.setOnClickListener {
      val destIntent = ChatWithDoctorActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "BOOKING_DOCTOR_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, BookingDoctorActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

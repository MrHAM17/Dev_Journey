package com.helthiotelehealth.app.modules.doctordetail.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityDoctorDetailBinding
import com.helthiotelehealth.app.modules.bookingdoctor.ui.BookingDoctorActivity
import com.helthiotelehealth.app.modules.doctordetail.`data`.viewmodel.DoctorDetailVM
import com.prolificinteractive.materialcalendarview.CalendarDay
import com.prolificinteractive.materialcalendarview.MaterialCalendarView
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class DoctorDetailActivity :
    BaseActivity<ActivityDoctorDetailBinding>(R.layout.activity_doctor_detail) {
  private val viewModel: DoctorDetailVM by viewModels<DoctorDetailVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.calendarCalendar.setOnDateChangedListener { widget, date, selected ->
      onSingleDateSelectedCalendarCalendar(widget, date, selected)
    }
    binding.doctorDetailVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnBookApointment.setOnClickListener {
      val destIntent = BookingDoctorActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  private fun onSingleDateSelectedCalendarCalendar(
    widget: MaterialCalendarView,
    date: CalendarDay,
    selected: Boolean
  ): Unit {
  }

  companion object {
    const val TAG: String = "DOCTOR_DETAIL_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, DoctorDetailActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

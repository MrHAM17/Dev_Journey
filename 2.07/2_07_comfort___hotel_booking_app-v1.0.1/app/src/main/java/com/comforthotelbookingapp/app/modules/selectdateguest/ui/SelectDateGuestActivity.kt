package com.comforthotelbookingapp.app.modules.selectdateguest.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivitySelectDateGuestBinding
import com.comforthotelbookingapp.app.modules.bookingnametabcontainer.ui.BookingNameTabContainerActivity
import com.comforthotelbookingapp.app.modules.selectdateguest.`data`.viewmodel.SelectDateGuestVM
import com.prolificinteractive.materialcalendarview.CalendarDay
import com.prolificinteractive.materialcalendarview.MaterialCalendarView
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class SelectDateGuestActivity :
    BaseActivity<ActivitySelectDateGuestBinding>(R.layout.activity_select_date_guest) {
  private val viewModel: SelectDateGuestVM by viewModels<SelectDateGuestVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.calendarVector.setOnDateChangedListener { widget, date, selected ->
      onSingleDateSelectedCalendarVector(widget, date, selected)
    }
    binding.selectDateGuestVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
    binding.btnContinue.setOnClickListener {
      val destIntent = BookingNameTabContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  private fun onSingleDateSelectedCalendarVector(
    widget: MaterialCalendarView,
    date: CalendarDay,
    selected: Boolean
  ): Unit {
  }

  companion object {
    const val TAG: String = "SELECT_DATE_GUEST_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SelectDateGuestActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

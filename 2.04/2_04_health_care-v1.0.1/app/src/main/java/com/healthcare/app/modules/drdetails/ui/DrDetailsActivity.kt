package com.healthcare.app.modules.drdetails.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.healthcare.app.R
import com.healthcare.app.appcomponents.base.BaseActivity
import com.healthcare.app.databinding.ActivityDrDetailsBinding
import com.healthcare.app.modules.bookanappointment.ui.BookAnAppointmentActivity
import com.healthcare.app.modules.chat.ui.ChatActivity
import com.healthcare.app.modules.drdetails.`data`.viewmodel.DrDetailsVM
import com.prolificinteractive.materialcalendarview.CalendarDay
import com.prolificinteractive.materialcalendarview.MaterialCalendarView
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class DrDetailsActivity : BaseActivity<ActivityDrDetailsBinding>(R.layout.activity_dr_details) {
  private val viewModel: DrDetailsVM by viewModels<DrDetailsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.calendarDates.setOnDateChangedListener { widget, date, selected ->
      onSingleDateSelectedCalendarDates(widget, date, selected)
    }
    binding.drDetailsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnBookAppointment.setOnClickListener {
      val destIntent = BookAnAppointmentActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnUser.setOnClickListener {
      val destIntent = ChatActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  private fun onSingleDateSelectedCalendarDates(
    widget: MaterialCalendarView,
    date: CalendarDay,
    selected: Boolean
  ): Unit {
  }

  companion object {
    const val TAG: String = "DR_DETAILS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, DrDetailsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

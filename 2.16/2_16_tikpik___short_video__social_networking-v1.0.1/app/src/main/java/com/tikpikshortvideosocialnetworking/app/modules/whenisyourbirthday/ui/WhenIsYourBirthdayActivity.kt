package com.tikpikshortvideosocialnetworking.app.modules.whenisyourbirthday.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.prolificinteractive.materialcalendarview.CalendarDay
import com.prolificinteractive.materialcalendarview.MaterialCalendarView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.appcomponents.views.DatePickerFragment
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityWhenIsYourBirthdayBinding
import com.tikpikshortvideosocialnetworking.app.modules.fillyourprofileblankform.ui.FillYourProfileBlankFormActivity
import com.tikpikshortvideosocialnetworking.app.modules.homecontainer.ui.HomeContainerActivity
import com.tikpikshortvideosocialnetworking.app.modules.whenisyourbirthday.`data`.viewmodel.WhenIsYourBirthdayVM
import java.util.Date
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class WhenIsYourBirthdayActivity :
    BaseActivity<ActivityWhenIsYourBirthdayBinding>(R.layout.activity_when_is_your_birthday) {
  private val viewModel: WhenIsYourBirthdayVM by viewModels<WhenIsYourBirthdayVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.calendarCalendar.setOnDateChangedListener { widget, date, selected ->
      onSingleDateSelectedCalendarCalendar(widget, date, selected)
    }
    binding.whenIsYourBirthdayVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSkip.setOnClickListener {
      val destIntent = HomeContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
    binding.btnContinue.setOnClickListener {
      val destIntent = FillYourProfileBlankFormActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.etDate.setOnClickListener {
      val destinationInstance = DatePickerFragment.getInstance()
      destinationInstance.show(this.supportFragmentManager, DatePickerFragment.TAG) {
        selectedDate ->
        onDateSelectedEtDate(selectedDate)
      }
    }
  }

  private fun onSingleDateSelectedCalendarCalendar(
    widget: MaterialCalendarView,
    date: CalendarDay,
    selected: Boolean
  ): Unit {
  }

  private fun onDateSelectedEtDate(selectedDate: Date): Unit {
  }

  companion object {
    const val TAG: String = "WHEN_IS_YOUR_BIRTHDAY_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, WhenIsYourBirthdayActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

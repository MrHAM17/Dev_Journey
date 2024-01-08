package com.vertexrealestateapp.app.modules.pickdate.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.prolificinteractive.materialcalendarview.CalendarDay
import com.prolificinteractive.materialcalendarview.MaterialCalendarView
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityPickDateBinding
import com.vertexrealestateapp.app.modules.pickdate.`data`.model.Time1RowModel
import com.vertexrealestateapp.app.modules.pickdate.`data`.viewmodel.PickDateVM
import com.vertexrealestateapp.app.modules.verifyphonenumber.ui.VerifyPhoneNumberActivity
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PickDateActivity : BaseActivity<ActivityPickDateBinding>(R.layout.activity_pick_date) {
  private val viewModel: PickDateVM by viewModels<PickDateVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val timeAdapter = TimeAdapter(viewModel.timeList.value?:mutableListOf())
    binding.recyclerTime.adapter = timeAdapter
    timeAdapter.setOnItemClickListener(
    object : TimeAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Time1RowModel) {
        onClickRecyclerTime(view, position, item)
      }
    }
    )
    viewModel.timeList.observe(this) {
      timeAdapter.updateData(it)
    }
    binding.calendarDates.setOnDateChangedListener { widget, date, selected ->
      onSingleDateSelectedCalendarDates(widget, date, selected)
    }
    binding.pickDateVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnScheduleTour.setOnClickListener {
      val destIntent = VerifyPhoneNumberActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerTime(
    view: View,
    position: Int,
    item: Time1RowModel
  ): Unit {
    when(view.id) {
    }
  }

  private fun onSingleDateSelectedCalendarDates(
    widget: MaterialCalendarView,
    date: CalendarDay,
    selected: Boolean
  ): Unit {
  }

  companion object {
    const val TAG: String = "PICK_DATE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PickDateActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

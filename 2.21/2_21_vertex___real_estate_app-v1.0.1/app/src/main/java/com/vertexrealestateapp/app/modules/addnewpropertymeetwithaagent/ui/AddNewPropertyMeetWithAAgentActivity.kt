package com.vertexrealestateapp.app.modules.addnewpropertymeetwithaagent.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.prolificinteractive.materialcalendarview.CalendarDay
import com.prolificinteractive.materialcalendarview.MaterialCalendarView
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityAddNewPropertyMeetWithAAgentBinding
import com.vertexrealestateapp.app.modules.addnewpropertymeetwithaagent.`data`.model.TimeRowModel
import com.vertexrealestateapp.app.modules.addnewpropertymeetwithaagent.`data`.viewmodel.AddNewPropertyMeetWithAAgentVM
import com.vertexrealestateapp.app.modules.addnewpropertytimetosell.ui.AddNewPropertyTimeToSellActivity
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class AddNewPropertyMeetWithAAgentActivity :
    BaseActivity<ActivityAddNewPropertyMeetWithAAgentBinding>(R.layout.activity_add_new_property_meet_with_a_agent)
    {
  private val viewModel: AddNewPropertyMeetWithAAgentVM by
      viewModels<AddNewPropertyMeetWithAAgentVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val timeAdapter = TimeAdapter(viewModel.timeList.value?:mutableListOf())
    binding.recyclerTime.adapter = timeAdapter
    timeAdapter.setOnItemClickListener(
    object : TimeAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : TimeRowModel) {
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
    binding.addNewPropertyMeetWithAAgentVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnNext.setOnClickListener {
      val destIntent = AddNewPropertyTimeToSellActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerTime(
    view: View,
    position: Int,
    item: TimeRowModel
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
    const val TAG: String = "ADD_NEW_PROPERTY_MEET_WITH_A_AGENT_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AddNewPropertyMeetWithAAgentActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

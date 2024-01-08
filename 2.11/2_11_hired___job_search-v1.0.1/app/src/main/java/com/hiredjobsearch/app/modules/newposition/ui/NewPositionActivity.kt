package com.hiredjobsearch.app.modules.newposition.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseActivity
import com.hiredjobsearch.app.appcomponents.views.DatePickerFragment
import com.hiredjobsearch.app.databinding.ActivityNewPositionBinding
import com.hiredjobsearch.app.modules.experiencesetting.ui.ExperienceSettingActivity
import com.hiredjobsearch.app.modules.newposition.`data`.model.SpinnerCheckmarkModel
import com.hiredjobsearch.app.modules.newposition.`data`.viewmodel.NewPositionVM
import java.util.Date
import kotlin.String
import kotlin.Unit

class NewPositionActivity : BaseActivity<ActivityNewPositionBinding>(R.layout.activity_new_position)
    {
  private val viewModel: NewPositionVM by viewModels<NewPositionVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    viewModel.spinnerCheckmarkList.value = mutableListOf(
    SpinnerCheckmarkModel("Item1"),
    SpinnerCheckmarkModel("Item2"),
    SpinnerCheckmarkModel("Item3"),
    SpinnerCheckmarkModel("Item4"),
    SpinnerCheckmarkModel("Item5")
    )
    val spinnerCheckmarkAdapter =
    SpinnerCheckmarkAdapter(this,R.layout.spinner_item,viewModel.spinnerCheckmarkList.value?:
    mutableListOf())
    binding.spinnerCheckmark.adapter = spinnerCheckmarkAdapter
    binding.newPositionVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.linearFrameOne2.setOnClickListener {
      val destinationInstance = DatePickerFragment.getInstance()
      destinationInstance.show(this.supportFragmentManager, DatePickerFragment.TAG) {
        selectedDate ->
        onDateSelectedLinearFrameOne2(selectedDate)
      }
    }
    binding.btnSaveChanges.setOnClickListener {
      val destIntent = ExperienceSettingActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.linearFrameOne1.setOnClickListener {
      val destinationInstance = DatePickerFragment.getInstance()
      destinationInstance.show(this.supportFragmentManager, DatePickerFragment.TAG) {
        selectedDate ->
        onDateSelectedLinearFrameOne1(selectedDate)
      }
    }
    binding.imageArrowBack.setOnClickListener {
      finish()
    }
  }

  private fun onDateSelectedLinearFrameOne2(selectedDate: Date): Unit {
  }

  private fun onDateSelectedLinearFrameOne1(selectedDate: Date): Unit {
  }

  companion object {
    const val TAG: String = "NEW_POSITION_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, NewPositionActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

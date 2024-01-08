package com.hiredjobsearch.app.modules.addneweducation.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseActivity
import com.hiredjobsearch.app.appcomponents.views.DatePickerFragment
import com.hiredjobsearch.app.databinding.ActivityAddNewEducationBinding
import com.hiredjobsearch.app.modules.addneweducation.`data`.model.SpinnerFrameOneModel
import com.hiredjobsearch.app.modules.addneweducation.`data`.viewmodel.AddNewEducationVM
import com.hiredjobsearch.app.modules.experiencesetting.ui.ExperienceSettingActivity
import java.util.Date
import kotlin.String
import kotlin.Unit

class AddNewEducationActivity :
    BaseActivity<ActivityAddNewEducationBinding>(R.layout.activity_add_new_education) {
  private val viewModel: AddNewEducationVM by viewModels<AddNewEducationVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    viewModel.spinnerFrameOneList.value = mutableListOf(
    SpinnerFrameOneModel("Item1"),
    SpinnerFrameOneModel("Item2"),
    SpinnerFrameOneModel("Item3"),
    SpinnerFrameOneModel("Item4"),
    SpinnerFrameOneModel("Item5")
    )
    val spinnerFrameOneAdapter =
    SpinnerFrameOneAdapter(this,R.layout.spinner_item,viewModel.spinnerFrameOneList.value?:
    mutableListOf())
    binding.spinnerFrameOne.adapter = spinnerFrameOneAdapter
    binding.addNewEducationVM = viewModel
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

  private fun onDateSelectedLinearFrameOne2(selectedDate: Date) {
  }

  private fun onDateSelectedLinearFrameOne1(selectedDate: Date) {
  }

  companion object {
    const val TAG: String = "ADD_NEW_EDUCATION_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AddNewEducationActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

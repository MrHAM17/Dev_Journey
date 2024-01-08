package com.hiredjobsearch.app.modules.experiencesetting.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseActivity
import com.hiredjobsearch.app.databinding.ActivityExperienceSettingBinding
import com.hiredjobsearch.app.modules.addneweducation.ui.AddNewEducationActivity
import com.hiredjobsearch.app.modules.experiencesetting.`data`.model.ExperiencesettingRowModel
import com.hiredjobsearch.app.modules.experiencesetting.`data`.viewmodel.ExperienceSettingVM
import com.hiredjobsearch.app.modules.newposition.ui.NewPositionActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ExperienceSettingActivity :
    BaseActivity<ActivityExperienceSettingBinding>(R.layout.activity_experience_setting) {
  private val viewModel: ExperienceSettingVM by viewModels<ExperienceSettingVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val experienceSettingAdapter =
    ExperienceSettingAdapter(viewModel.experienceSettingList.value?:mutableListOf())
    binding.recyclerExperienceSetting.adapter = experienceSettingAdapter
    experienceSettingAdapter.setOnItemClickListener(
    object : ExperienceSettingAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ExperiencesettingRowModel) {
        onClickRecyclerExperienceSetting(view, position, item)
      }
    }
    )
    viewModel.experienceSettingList.observe(this) {
      experienceSettingAdapter.updateData(it)
    }
    binding.experienceSettingVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageEditSquare.setOnClickListener {
      val destIntent = NewPositionActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnAddNewEducation.setOnClickListener {
      val destIntent = AddNewEducationActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnAddNewPosition.setOnClickListener {
      val destIntent = NewPositionActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageArrowBack.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerExperienceSetting(
    view: View,
    position: Int,
    item: ExperiencesettingRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "EXPERIENCE_SETTING_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ExperienceSettingActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

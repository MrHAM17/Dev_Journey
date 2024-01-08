package com.vertexrealestateapp.app.modules.selectappalarm.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivitySelectAppAlarmBinding
import com.vertexrealestateapp.app.modules.confirmrequest.ui.ConfirmRequestActivity
import com.vertexrealestateapp.app.modules.selectappalarm.`data`.viewmodel.SelectAppAlarmVM
import kotlin.String
import kotlin.Unit

class SelectAppAlarmActivity :
    BaseActivity<ActivitySelectAppAlarmBinding>(R.layout.activity_select_app_alarm) {
  private val viewModel: SelectAppAlarmVM by viewModels<SelectAppAlarmVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.selectAppAlarmVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnSchedule.setOnClickListener {
      val destIntent = ConfirmRequestActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "SELECT_APP_ALARM_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SelectAppAlarmActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

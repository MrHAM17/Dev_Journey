package com.tikpikshortvideosocialnetworking.app.modules.report.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityReportBinding
import com.tikpikshortvideosocialnetworking.app.modules.report.`data`.viewmodel.ReportVM
import kotlin.String
import kotlin.Unit

class ReportActivity : BaseActivity<ActivityReportBinding>(R.layout.activity_report) {
  private val viewModel: ReportVM by viewModels<ReportVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.reportVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "REPORT_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ReportActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

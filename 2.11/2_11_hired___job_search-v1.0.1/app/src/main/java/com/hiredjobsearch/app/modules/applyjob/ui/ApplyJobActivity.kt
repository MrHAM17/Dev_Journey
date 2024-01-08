package com.hiredjobsearch.app.modules.applyjob.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseActivity
import com.hiredjobsearch.app.databinding.ActivityApplyJobBinding
import com.hiredjobsearch.app.modules.applyjob.`data`.viewmodel.ApplyJobVM
import com.hiredjobsearch.app.modules.applyjobpopup.ui.ApplyJobPopupDialog
import kotlin.String
import kotlin.Unit

class ApplyJobActivity : BaseActivity<ActivityApplyJobBinding>(R.layout.activity_apply_job) {
  private val viewModel: ApplyJobVM by viewModels<ApplyJobVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.applyJobVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageImage.setOnClickListener {
      finish()
    }
    binding.btnContinue.setOnClickListener {
      val destFragment = ApplyJobPopupDialog.getInstance(null)
      destFragment.show(this.supportFragmentManager, ApplyJobPopupDialog.TAG)
    }
  }

  companion object {
    const val TAG: String = "APPLY_JOB_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ApplyJobActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

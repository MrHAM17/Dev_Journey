package com.hiredjobsearch.app.modules.jobtype.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseActivity
import com.hiredjobsearch.app.databinding.ActivityJobTypeBinding
import com.hiredjobsearch.app.modules.jobtype.`data`.model.JobtypeRowModel
import com.hiredjobsearch.app.modules.jobtype.`data`.viewmodel.JobTypeVM
import com.hiredjobsearch.app.modules.speciallization.ui.SpeciallizationActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class JobTypeActivity : BaseActivity<ActivityJobTypeBinding>(R.layout.activity_job_type) {
  private val viewModel: JobTypeVM by viewModels<JobTypeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val jobTypeAdapter = JobTypeAdapter(viewModel.jobTypeList.value?:mutableListOf())
    binding.recyclerJobType.adapter = jobTypeAdapter
    jobTypeAdapter.setOnItemClickListener(
    object : JobTypeAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : JobtypeRowModel) {
        onClickRecyclerJobType(view, position, item)
      }
    }
    )
    viewModel.jobTypeList.observe(this) {
      jobTypeAdapter.updateData(it)
    }
    binding.jobTypeVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnContinue.setOnClickListener {
      val destIntent = SpeciallizationActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageImage.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerJobType(
    view: View,
    position: Int,
    item: JobtypeRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "JOB_TYPE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, JobTypeActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

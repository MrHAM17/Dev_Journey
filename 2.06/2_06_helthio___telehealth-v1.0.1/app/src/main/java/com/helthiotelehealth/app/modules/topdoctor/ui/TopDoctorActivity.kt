package com.helthiotelehealth.app.modules.topdoctor.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityTopDoctorBinding
import com.helthiotelehealth.app.modules.topdoctor.`data`.model.TopdoctorRowModel
import com.helthiotelehealth.app.modules.topdoctor.`data`.viewmodel.TopDoctorVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TopDoctorActivity : BaseActivity<ActivityTopDoctorBinding>(R.layout.activity_top_doctor) {
  private val viewModel: TopDoctorVM by viewModels<TopDoctorVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val topDoctorAdapter = TopDoctorAdapter(viewModel.topDoctorList.value?:mutableListOf())
    binding.recyclerTopDoctor.adapter = topDoctorAdapter
    topDoctorAdapter.setOnItemClickListener(
    object : TopDoctorAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : TopdoctorRowModel) {
        onClickRecyclerTopDoctor(view, position, item)
      }
    }
    )
    viewModel.topDoctorList.observe(this) {
      topDoctorAdapter.updateData(it)
    }
    binding.topDoctorVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerTopDoctor(
    view: View,
    position: Int,
    item: TopdoctorRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "TOP_DOCTOR_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, TopDoctorActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

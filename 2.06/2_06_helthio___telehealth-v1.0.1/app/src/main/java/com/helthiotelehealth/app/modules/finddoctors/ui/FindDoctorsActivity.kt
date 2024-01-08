package com.helthiotelehealth.app.modules.finddoctors.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityFindDoctorsBinding
import com.helthiotelehealth.app.modules.doctordetail.ui.DoctorDetailActivity
import com.helthiotelehealth.app.modules.finddoctors.`data`.model.DoctorsRowModel
import com.helthiotelehealth.app.modules.finddoctors.`data`.model.FinddoctorsRowModel
import com.helthiotelehealth.app.modules.finddoctors.`data`.viewmodel.FindDoctorsVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class FindDoctorsActivity : BaseActivity<ActivityFindDoctorsBinding>(R.layout.activity_find_doctors)
    {
  private val viewModel: FindDoctorsVM by viewModels<FindDoctorsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val findDoctorsAdapter =
    FindDoctorsAdapter(viewModel.findDoctorsList.value?:mutableListOf())
    binding.recyclerFindDoctors.adapter = findDoctorsAdapter
    findDoctorsAdapter.setOnItemClickListener(
    object : FindDoctorsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FinddoctorsRowModel) {
        onClickRecyclerFindDoctors(view, position, item)
      }
    }
    )
    viewModel.findDoctorsList.observe(this) {
      findDoctorsAdapter.updateData(it)
    }
    val doctorsAdapter = DoctorsAdapter(viewModel.doctorsList.value?:mutableListOf())
    binding.recyclerDoctors.adapter = doctorsAdapter
    doctorsAdapter.setOnItemClickListener(
    object : DoctorsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : DoctorsRowModel) {
        onClickRecyclerDoctors(view, position, item)
      }
    }
    )
    viewModel.doctorsList.observe(this) {
      doctorsAdapter.updateData(it)
    }
    binding.findDoctorsVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.linearDr.setOnClickListener {
      val destIntent = DoctorDetailActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerFindDoctors(
    view: View,
    position: Int,
    item: FinddoctorsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerDoctors(
    view: View,
    position: Int,
    item: DoctorsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  private fun setUpSearchViewSearchListener(): Unit {
    binding.searchViewSearch.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
      override fun onQueryTextSubmit(p0 : String) : Boolean {
        // Performs search when user hit
        // the search button on the keyboard
        return false
      }
      override fun onQueryTextChange(p0 : String) : Boolean {
        // Start filtering the list as user
        // start entering the characters
        return false
      }
      })
    }

    companion object {
      const val TAG: String = "FIND_DOCTORS_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, FindDoctorsActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }

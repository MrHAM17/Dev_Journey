package com.comforthotelbookingapp.app.modules.fillprofile.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.appcomponents.views.ImagePickerFragmentDialog
import com.comforthotelbookingapp.app.databinding.ActivityFillProfileBinding
import com.comforthotelbookingapp.app.modules.fillprofile.`data`.model.SpinnerGenderModel
import com.comforthotelbookingapp.app.modules.fillprofile.`data`.viewmodel.FillProfileVM
import kotlin.String
import kotlin.Unit

class FillProfileActivity : BaseActivity<ActivityFillProfileBinding>(R.layout.activity_fill_profile)
    {
  private val viewModel: FillProfileVM by viewModels<FillProfileVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    viewModel.spinnerGenderList.value = mutableListOf(
    SpinnerGenderModel("Item1"),
    SpinnerGenderModel("Item2"),
    SpinnerGenderModel("Item3"),
    SpinnerGenderModel("Item4"),
    SpinnerGenderModel("Item5")
    )
    val spinnerGenderAdapter =
    SpinnerGenderAdapter(this,R.layout.spinner_item,viewModel.spinnerGenderList.value?:
    mutableListOf())
    binding.spinnerGender.adapter = spinnerGenderAdapter
    binding.fillProfileVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.included.setOnClickListener {
      ImagePickerFragmentDialog().show(supportFragmentManager)
      { path ->//TODO HANDLE DATA
      }

          }
      binding.imageArrowDown.setOnClickListener {
        finish()
      }
    }

    companion object {
      const val TAG: String = "FILL_PROFILE_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, FillProfileActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }

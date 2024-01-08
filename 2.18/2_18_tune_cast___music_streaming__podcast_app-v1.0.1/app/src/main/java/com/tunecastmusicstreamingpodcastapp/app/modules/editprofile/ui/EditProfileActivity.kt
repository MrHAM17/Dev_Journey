package com.tunecastmusicstreamingpodcastapp.app.modules.editprofile.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.views.DatePickerFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityEditProfileBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.editprofile.`data`.model.SpinnerInputFieldsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.editprofile.`data`.viewmodel.EditProfileVM
import com.tunecastmusicstreamingpodcastapp.app.modules.profiledetailsone.ui.ProfileDetailsOneActivity
import java.util.Date
import kotlin.String
import kotlin.Unit

class EditProfileActivity : BaseActivity<ActivityEditProfileBinding>(R.layout.activity_edit_profile)
    {
  private val viewModel: EditProfileVM by viewModels<EditProfileVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    viewModel.spinnerInputFieldsList.value = mutableListOf(
    SpinnerInputFieldsModel("Item1"),
    SpinnerInputFieldsModel("Item2"),
    SpinnerInputFieldsModel("Item3"),
    SpinnerInputFieldsModel("Item4"),
    SpinnerInputFieldsModel("Item5")
    )
    val spinnerInputFieldsAdapter =
    SpinnerInputFieldsAdapter(this,R.layout.spinner_item,viewModel.spinnerInputFieldsList.value?:
    mutableListOf())
    binding.spinnerInputFields.adapter = spinnerInputFieldsAdapter
    binding.editProfileVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.included.setOnClickListener {
      finish()
    }
    binding.etDate.setOnClickListener {
      val destinationInstance = DatePickerFragment.getInstance()
      destinationInstance.show(this.supportFragmentManager, DatePickerFragment.TAG) {
        selectedDate ->
        onDateSelectedEtDate(selectedDate)
      }
    }
    binding.btnUpdate.setOnClickListener {
      val destIntent = ProfileDetailsOneActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  private fun onDateSelectedEtDate(selectedDate: Date): Unit {
  }

  companion object {
    const val TAG: String = "EDIT_PROFILE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, EditProfileActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

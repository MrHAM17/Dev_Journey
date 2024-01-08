package com.tunecastmusicstreamingpodcastapp.app.modules.addnewcard.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.views.DatePickerFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityAddNewCardBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.addnewcard.`data`.viewmodel.AddNewCardVM
import com.tunecastmusicstreamingpodcastapp.app.modules.selectpaymentmethod.ui.SelectPaymentMethodActivity
import java.util.Date
import kotlin.String
import kotlin.Unit

class AddNewCardActivity : BaseActivity<ActivityAddNewCardBinding>(R.layout.activity_add_new_card) {
  private val viewModel: AddNewCardVM by viewModels<AddNewCardVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.addNewCardVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnAdd.setOnClickListener {
      val destIntent = SelectPaymentMethodActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.linearInputFields.setOnClickListener {
      val destinationInstance = DatePickerFragment.getInstance()
      destinationInstance.show(this.supportFragmentManager, DatePickerFragment.TAG) {
          selectedDate ->
        onDateSelectedLinearInputFields(selectedDate)
      }
    }
  }

  private fun onDateSelectedLinearInputFields(selectedDate: Date) {
  }

  companion object {
    const val TAG: String = "ADD_NEW_CARD_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AddNewCardActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

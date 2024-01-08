package com.housitbuyrentsellproperty.app.modules.addreviewfill.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityAddReviewFillBinding
import com.housitbuyrentsellproperty.app.modules.addreviewfill.`data`.model.AddreviewfillRowModel
import com.housitbuyrentsellproperty.app.modules.addreviewfill.`data`.viewmodel.AddReviewFillVM
import com.housitbuyrentsellproperty.app.modules.addreviewsuccess.ui.AddReviewSuccessBottomsheet
import kotlin.Int
import kotlin.String
import kotlin.Unit

class AddReviewFillActivity :
    BaseActivity<ActivityAddReviewFillBinding>(R.layout.activity_add_review_fill) {
  private val viewModel: AddReviewFillVM by viewModels<AddReviewFillVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val addReviewFillAdapter =
    AddReviewFillAdapter(viewModel.addReviewFillList.value?:mutableListOf())
    binding.recyclerAddReviewFill.adapter = addReviewFillAdapter
    addReviewFillAdapter.setOnItemClickListener(
    object : AddReviewFillAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : AddreviewfillRowModel) {
        onClickRecyclerAddReviewFill(view, position, item)
      }
    }
    )
    viewModel.addReviewFillList.observe(this) {
      addReviewFillAdapter.updateData(it)
    }
    binding.addReviewFillVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnSubmit.setOnClickListener {
      val destFragment = AddReviewSuccessBottomsheet.getInstance(null)
      destFragment.show(this.supportFragmentManager, AddReviewSuccessBottomsheet.TAG)
    }
  }

  fun onClickRecyclerAddReviewFill(
    view: View,
    position: Int,
    item: AddreviewfillRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "ADD_REVIEW_FILL_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AddReviewFillActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}

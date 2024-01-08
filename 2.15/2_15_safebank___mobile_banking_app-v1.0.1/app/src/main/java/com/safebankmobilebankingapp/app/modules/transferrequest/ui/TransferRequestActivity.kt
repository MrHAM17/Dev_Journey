package com.safebankmobilebankingapp.app.modules.transferrequest.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseActivity
import com.safebankmobilebankingapp.app.databinding.ActivityTransferRequestBinding
import com.safebankmobilebankingapp.app.extensions.loadFragment
import com.safebankmobilebankingapp.app.modules.transfer.ui.TransferFragment
import com.safebankmobilebankingapp.app.modules.transferrequest.`data`.model.TransferrequestRowModel
import com.safebankmobilebankingapp.app.modules.transferrequest.`data`.viewmodel.TransferRequestVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TransferRequestActivity :
    BaseActivity<ActivityTransferRequestBinding>(R.layout.activity_transfer_request) {
  private val viewModel: TransferRequestVM by viewModels<TransferRequestVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val transferRequestAdapter =
    TransferRequestAdapter(viewModel.transferRequestList.value?:mutableListOf())
    binding.recyclerTransferRequest.adapter = transferRequestAdapter
    transferRequestAdapter.setOnItemClickListener(
    object : TransferRequestAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : TransferrequestRowModel) {
        onClickRecyclerTransferRequest(view, position, item)
      }
    }
    )
    viewModel.transferRequestList.observe(this) {
      transferRequestAdapter.updateData(it)
    }
    binding.transferRequestVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnTransfer.setOnClickListener {
      val destFragment = TransferFragment.getInstance(null)
      this.loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = TransferFragment.TAG,
      addToBackStack = true,
      add = false,
      enter = null,
      exit = null,
      )
    }
  }

  fun onClickRecyclerTransferRequest(
    view: View,
    position: Int,
    item: TransferrequestRowModel
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
      const val TAG: String = "TRANSFER_REQUEST_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, TransferRequestActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }

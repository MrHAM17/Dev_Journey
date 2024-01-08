package com.tikpikshortvideosocialnetworking.app.modules.messages.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityMessagesBinding
import com.tikpikshortvideosocialnetworking.app.modules.messages.`data`.model.Autolayouthorizontal5RowModel
import com.tikpikshortvideosocialnetworking.app.modules.messages.`data`.model.TheresavarnesRowModel
import com.tikpikshortvideosocialnetworking.app.modules.messages.`data`.viewmodel.MessagesVM
import com.tikpikshortvideosocialnetworking.app.modules.messagesbox.ui.MessagesBoxActivity
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class MessagesActivity : BaseActivity<ActivityMessagesBinding>(R.layout.activity_messages) {
  private val viewModel: MessagesVM by viewModels<MessagesVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val autoLayoutHorizontalAdapter =
    AutoLayoutHorizontalAdapter(viewModel.autoLayoutHorizontalList.value?:mutableListOf())
    binding.recyclerAutoLayoutHorizontal.adapter = autoLayoutHorizontalAdapter
    autoLayoutHorizontalAdapter.setOnItemClickListener(
    object : AutoLayoutHorizontalAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item :
      Autolayouthorizontal5RowModel) {
        onClickRecyclerAutoLayoutHorizontal(view, position, item)
      }
    }
    )
    viewModel.autoLayoutHorizontalList.observe(this) {
      autoLayoutHorizontalAdapter.updateData(it)
    }
    val theresaVarnesAdapter =
    TheresaVarnesAdapter(viewModel.theresaVarnesList.value?:mutableListOf())
    binding.recyclerTheresaVarnes.adapter = theresaVarnesAdapter
    theresaVarnesAdapter.setOnItemClickListener(
    object : TheresaVarnesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : TheresavarnesRowModel) {
        onClickRecyclerTheresaVarnes(view, position, item)
      }
    }
    )
    viewModel.theresaVarnesList.observe(this) {
      theresaVarnesAdapter.updateData(it)
    }
    binding.messagesVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerAutoLayoutHorizontal(
    view: View,
    position: Int,
    item: Autolayouthorizontal5RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerTheresaVarnes(
    view: View,
    position: Int,
    item: TheresavarnesRowModel
  ): Unit {
    when(view.id) {
      R.id.linearTypeMessengerList ->  {
        val destIntent = MessagesBoxActivity.getIntent(this, null)
        startActivity(destIntent)
      }
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
      const val TAG: String = "MESSAGES_ACTIVITY"

    }
  }

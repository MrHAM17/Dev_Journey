package com.hiredjobsearch.app.modules.messageaction.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseActivity
import com.hiredjobsearch.app.databinding.ActivityMessageActionBinding
import com.hiredjobsearch.app.modules.chat.ui.ChatActivity
import com.hiredjobsearch.app.modules.messageaction.`data`.model.MessageactionRowModel
import com.hiredjobsearch.app.modules.messageaction.`data`.viewmodel.MessageActionVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class MessageActionActivity :
    BaseActivity<ActivityMessageActionBinding>(R.layout.activity_message_action) {
  private val viewModel: MessageActionVM by viewModels<MessageActionVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val messageActionAdapter =
    MessageActionAdapter(viewModel.messageActionList.value?:mutableListOf())
    binding.recyclerMessageAction.adapter = messageActionAdapter
    messageActionAdapter.setOnItemClickListener(
    object : MessageActionAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : MessageactionRowModel) {
        onClickRecyclerMessageAction(view, position, item)
      }
    }
    )
    viewModel.messageActionList.observe(this) {
      messageActionAdapter.updateData(it)
    }
    binding.messageActionVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.imageImage.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerMessageAction(
    view: View,
    position: Int,
    item: MessageactionRowModel
  ): Unit {
    when(view.id) {
      R.id.linearEstherHoward ->  {
        onClickRecyclerMessageActionLinearEstherHoward(view, position, item)
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

    fun onClickRecyclerMessageActionLinearEstherHoward(
      view: View,
      position: Int,
      item: MessageactionRowModel
    ) {
      /** TODO As per your logic, Add constant type for item click.*/
      when(0) {
        0 ->  {
          val destIntent = ChatActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        1 ->  {
          val destIntent = ChatActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }
    }

    companion object {
      const val TAG: String = "MESSAGE_ACTION_ACTIVITY"

    }
  }

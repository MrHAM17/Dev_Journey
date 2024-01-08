package com.vertexrealestateapp.app.modules.messagechat.ui

import android.app.Activity
import android.content.Intent
import android.widget.Toast
import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityMessageChatBinding
import com.vertexrealestateapp.app.extensions.PickerHandler
import com.vertexrealestateapp.app.extensions.PickerHandler.OPEN_CONTACT_REQUEST_CODE
import com.vertexrealestateapp.app.extensions.PickerHandler.REQUEST_PERMISSION
import com.vertexrealestateapp.app.modules.messagechat.`data`.viewmodel.MessageChatVM
import com.vmadalin.easypermissions.EasyPermissions
import com.vmadalin.easypermissions.EasyPermissions.PermissionCallbacks
import com.vmadalin.easypermissions.dialogs.SettingsDialog
import kotlin.Array
import kotlin.Boolean
import kotlin.Int
import kotlin.IntArray
import kotlin.String
import kotlin.Unit
import kotlin.collections.List

class MessageChatActivity :
    BaseActivity<ActivityMessageChatBinding>(R.layout.activity_message_chat), PermissionCallbacks {
  private val viewModel: MessageChatVM by viewModels<MessageChatVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.messageChatVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  override fun onRequestPermissionsResult(
    requestCode: Int,
    permissions: Array<String>,
    grantResults: IntArray
  ) {
    super.onRequestPermissionsResult(requestCode,permissions,grantResults)
    when(requestCode) {
      REQUEST_PERMISSION -> {
        EasyPermissions.onRequestPermissionsResult(requestCode, permissions, grantResults,
            this@MessageChatActivity)
      }
    }
  }

  private fun hasPermission(permission: String): Boolean {
    val checkPermission = EasyPermissions.hasPermissions(this@MessageChatActivity, permission)
    return checkPermission
  }

  override fun onActivityResult(
    requestCode: Int,
    resultCode: Int,
    `data`: Intent?
  ) {
    super.onActivityResult(requestCode,resultCode,data)
    when(requestCode) { 
    OPEN_CONTACT_REQUEST_CODE ->{ 
     if (resultCode == Activity.RESULT_OK) { 
    	 val contactData = data?.data!! 
    	 PickerHandler.getContactInfo(contactData,this@MessageChatActivity) 
     } 
    }
    }
  }

  private fun requestPermission(permission: String) {
    EasyPermissions.requestPermissions(this@MessageChatActivity,
                    "This Application need Permission",
                    REQUEST_PERMISSION,
                    permission)
  }

  override fun onPermissionsDenied(requestCode: Int, perms: List<String>) {
    if(EasyPermissions.somePermissionPermanentlyDenied(this@MessageChatActivity,*perms.toTypedArray())) {
      	 	 SettingsDialog.Builder(this@MessageChatActivity).build().show()
      	}
    }

    override fun onPermissionsGranted(requestCode: Int, perms: List<String>) {
      Toast.makeText(this@MessageChatActivity,R.string.msg_permission_granted,Toast.LENGTH_LONG).show()
    }

    companion object {
      const val TAG: String = "MESSAGE_CHAT_ACTIVITY"

    }
  }

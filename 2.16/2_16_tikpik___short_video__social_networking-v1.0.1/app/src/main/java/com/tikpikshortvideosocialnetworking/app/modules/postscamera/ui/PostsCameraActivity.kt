package com.tikpikshortvideosocialnetworking.app.modules.postscamera.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.appcomponents.views.ImagePickerFragmentDialog
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityPostsCameraBinding
import com.tikpikshortvideosocialnetworking.app.modules.postscamera.`data`.viewmodel.PostsCameraVM
import com.tikpikshortvideosocialnetworking.app.modules.poststemplates.ui.PostsTemplatesActivity
import kotlin.String
import kotlin.Unit

class PostsCameraActivity : BaseActivity<ActivityPostsCameraBinding>(R.layout.activity_posts_camera)
    {
  private val viewModel: PostsCameraVM by viewModels<PostsCameraVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.postsCameraVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageCategoriesRepost.setOnClickListener {
      ImagePickerFragmentDialog().show(supportFragmentManager)
      { path ->//TODO HANDLE DATA
      }

          }
      binding.txtTemplates.setOnClickListener {
        val destIntent = PostsTemplatesActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      binding.imageCategoriesXClose.setOnClickListener {
        finish()
      }
    }

    companion object {
      const val TAG: String = "POSTS_CAMERA_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, PostsCameraActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }

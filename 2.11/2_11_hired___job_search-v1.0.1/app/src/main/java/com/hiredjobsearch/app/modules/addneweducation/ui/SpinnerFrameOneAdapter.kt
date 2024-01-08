package com.hiredjobsearch.app.modules.addneweducation.ui

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ArrayAdapter
import android.widget.TextView
import androidx.`annotation`.LayoutRes
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.modules.addneweducation.`data`.model.SpinnerFrameOneModel
import kotlin.Int
import kotlin.collections.List

class SpinnerFrameOneAdapter(
  private val mContext: Context,
  @LayoutRes
  private val layoutResource: Int,
  private val allItems: List<SpinnerFrameOneModel>
) : ArrayAdapter<SpinnerFrameOneModel>(mContext, layoutResource, allItems) {
  override fun getView(
    position: Int,
    convertView: View?,
    parent: ViewGroup
  ): View = this.createView(position, convertView, parent)

  override fun getDropDownView(
    position: Int,
    convertView: View?,
    parent: ViewGroup
  ): View = this.createView(position, convertView, parent)

  private fun createView(
    position: Int,
    convertView: View?,
    parent: ViewGroup
  ): View {
    val item = getItem(position)
    val view = convertView ?: LayoutInflater.from(mContext)
    .inflate(layoutResource, parent, false)
    view.findViewById<TextView>(R.id.txtTitle).text = item?.itemName
    return view
  }
}
